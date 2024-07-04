import { Button, DatePicker, Form, Input, Upload } from 'antd';
import { UploadIcon } from 'lucide-react';
import TableColor from '~/components/ui/color';

const normFile = (e: any) => {
  if (Array.isArray(e)) {
    return e;
  }
  return e?.fileList;
};

export const FormContest = () => {
  return (
    <>
      <Form layout='vertical'>
        <Form.Item label='Banner' valuePropName='fileList' getValueFromEvent={normFile}>
          <Upload action='https://660d2bd96ddfa2943b33731c.mockapi.io/api/upload' listType='picture'>
            <Button className='w-[282px]' icon={<UploadIcon size={20} />}>
              Tải lên
            </Button>
          </Upload>
        </Form.Item>
        <Form.Item label='Tên cuộc thi'>
          <Input placeholder='Cuộc thi mới..' />
        </Form.Item>
        <Form.Item label='Thể lệ'>
          <Input placeholder='Thể lệ cuộc thi..' />
        </Form.Item>
        <Form.Item label='Ngày bắt đầu'>
          <DatePicker placeholder='Chọn ngày bắt đầu' />
        </Form.Item>
        <Form.Item label='Ngày kết thúc'>
          <DatePicker placeholder='Chọn ngày kết thúc' />
        </Form.Item>
        <Form.Item label='Màu chủ đề'>
          <TableColor />
        </Form.Item>
        <Form.Item label='Mật khẩu'>
          <Input placeholder='Mật khẩu..' />
        </Form.Item>
      </Form>
    </>
  );
};
