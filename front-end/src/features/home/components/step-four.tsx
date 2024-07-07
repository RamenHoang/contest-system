import { Button, Form, Input } from 'antd';
import { useCreateOrganizer } from '~/features/home/hooks/use-create-organizer';
import { IOrganizer } from '~/types';

const StepFour = () => {
  // const navigate = useNavigate();
  const [form] = Form.useForm<IOrganizer>();

  const { mutate: createOrganizer } = useCreateOrganizer();

  const onFinish = (values: IOrganizer) => {
    createOrganizer(values, {
      // onSuccess: () => {
      //   navigate('/')
      // }
    });
  };

  return (
    <>
      <div className='text-[#757575] uppercase text-[23px] leading-[29px] font-semibold mb-4'>
        Thông tin Ban tổ chức
      </div>
      <div className='w-full'>
        <Form form={form} layout='vertical' onFinish={onFinish}>
          <div className='grid grid-cols-2 gap-3'>
            <Form.Item
              label='Tên'
              name='name'
              rules={[{ required: true, message: 'Vui lòng nhập tên đơn ban tổ chức!' }]}
            >
              <Input placeholder='Vui lòng nhập tên đơn ban tổ chức' size='large' />
            </Form.Item>
            <Form.Item label='Địa chỉ' name='address'>
              <Input size='large' placeholder='Vui lòng nhập địa chỉ' />
            </Form.Item>
          </div>
          <div className='grid grid-cols-2 gap-3'>
            <Form.Item label='Email' name='email'>
              <Input size='large' placeholder='example@gmail.com' />
            </Form.Item>
            <Form.Item<IOrganizer>
              label='Số điện thoại'
              name='phone'
              rules={[{ required: true, message: 'Vui lòng nhập số điện thoại' }]}
            >
              <Input placeholder='Vui lòng nhập số điện thoại' size='large' />
            </Form.Item>
          </div>
          <div className='mt-5 mb-2 flex justify-end gap-3'>
            <Button size='middle' htmlType='submit' type='primary'>
              Tiếp tục
            </Button>
          </div>
        </Form>
      </div>
    </>
  );
};

export default StepFour;
