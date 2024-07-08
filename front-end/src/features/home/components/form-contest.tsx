import {
  Button,
  Checkbox,
  Col,
  // ColorPicker,
  // ColorPickerProps,
  DatePicker,
  Form,
  GetProp,
  Input,
  Modal,
  Row,
  Upload
} from 'antd';
import { format } from 'date-fns';
import { UploadIcon } from 'lucide-react';
import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useCreateCompetition } from '~/features/home/hooks/use-create-competition';
import { useGetInfoRequired } from '~/features/home/hooks/use-info-required';
import { useInfo } from '~/hooks/useInfo';
import { ICompetition } from '~/types';

// @ts-expect-error eee
const normFile = (e) => {
  if (Array.isArray(e)) {
    return e;
  }
  return e?.fileList;
};

// type Color = GetProp<ColorPickerProps, 'value'>;

export const FormContest = () => {
  const navigate = useNavigate();
  const [isModalOpen, setIsModalOpen] = useState(false);

  const [selectedValues, setSelectedValues] = useState('');
  const [bannerUrl, setBannerUrl] = useState('');
  // const [themeColor, setThemeColor] = useState<Color>('#ffa616');

  const user = useInfo();

  const { mutate: createCompetition } = useCreateCompetition();

  const [form] = Form.useForm<ICompetition>();

  const showModal = () => {
    setIsModalOpen(true);
  };

  const handleOk = () => {
    setIsModalOpen(false);
  };

  const handleCancel = () => {
    setIsModalOpen(false);
  };

  const onChange: GetProp<typeof Checkbox.Group, 'onChange'> = (checkedValues) => {
    setSelectedValues(checkedValues.join());
  };

  const { data: listInfoRequired } = useGetInfoRequired();

  // @ts-expect-error info
  const handleUploadChange = (info) => {
    if (info.file.status === 'done') {
      setBannerUrl(info?.file?.response?.data);
    }
  };

  const handleSubmit = (data: ICompetition) => {
    const finalData = {
      ...data,
      timeStart: format(new Date(data.timeStart), 'yyyy-MM-dd HH:mm:ss'),
      timeEnd: format(new Date(data.timeEnd), 'yyyy-MM-dd HH:mm:ss'),
      bannerUrl,
      infoRequire: selectedValues
      // themeColor
    };

    createCompetition(finalData, {
      onSuccess: (response) => {
        // Assuming response.data contains the ID you want to use in the URL
        const contestId = response?.data;
        console.log(contestId);
        navigate(`/dashboard/contest/${contestId}/create?step=2`);
      }
    });
  };

  return (
    <>
      <Form form={form} layout='vertical' onFinish={handleSubmit}>
        <Form.Item label='Banner' valuePropName='fileList' getValueFromEvent={normFile}>
          <Upload
            headers={{
              Authorization: `Bearer ${user?.accessToken}`
            }}
            action={`${import.meta.env.VITE_DOMAIN_URL}/api/v1/competitions/upload-image`}
            listType='picture'
            onChange={handleUploadChange}
          >
            <Button className='w-[282px]' icon={<UploadIcon size={20} />}>
              Tải lên
            </Button>
          </Upload>
        </Form.Item>
        <Form.Item
          label='Tên cuộc thi'
          name='name'
          rules={[{ required: true, message: 'Vui lòng nhập tên đơn ban tổ chức!' }]}
        >
          <Input placeholder='Vui lòng nhập tên cuộc thi' defaultValue='Cuộc thi mới' />
        </Form.Item>
        <Form.Item label='Thể lệ' name='rules' rules={[{ required: true, message: 'Vui lòng nhập thể lệ cuộc thi!' }]}>
          <Input placeholder='Thể lệ cuộc thi..' defaultValue='Thể lệ cuộc thi' />
        </Form.Item>
        <Form.Item
          label='Ngày bắt đầu'
          name='timeStart'
          rules={[{ required: true, message: 'Vui lòng nhập thời gian bắt đầu!' }]}
        >
          <DatePicker placeholder='Chọn ngày bắt đầu' />
        </Form.Item>
        <Form.Item
          label='Ngày kết thúc'
          name='timeEnd'
          rules={[{ required: true, message: 'Vui lòng nhập thời gian bắt đầu!' }]}
        >
          <DatePicker placeholder='Chọn ngày kết thúc' />
        </Form.Item>
        {/* <Form.Item label='Màu chủ đề'>
          <ColorPicker
            value={themeColor}
            onChange={setThemeColor}
            showText={(color) => <span className='text-gray-500'>{color.toHexString()}</span>}
          />
        </Form.Item> */}
        <Form.Item label='Mật khẩu'>
          <Input placeholder='Mật khẩu..' disabled />
        </Form.Item>
        <Form.Item label='Thông tin bắt buộc'>
          <Input value='Họ tên, Số điện thoại, Email' onClick={showModal} className='cursor-pointer bg-gray-200' />
        </Form.Item>

        <div className='mt-5 mb-2 flex justify-end gap-3'>
          <Button size='middle' htmlType='submit' type='primary'>
            Tiếp tục
          </Button>
        </div>
      </Form>
      <Modal
        title='Thông tin bắt buộc (Yêu cầu người tham dự nhập vào)'
        open={isModalOpen}
        onOk={handleOk}
        onCancel={handleCancel}
      >
        <Checkbox.Group style={{ width: '100%' }} onChange={onChange}>
          <Row>
            {listInfoRequired?.data?.map((item: { id: number; label: string }) => (
              <Col span={12}>
                <Checkbox value={item.id}>{item.label}</Checkbox>
              </Col>
            ))}
          </Row>
        </Checkbox.Group>
      </Modal>
    </>
  );
};
