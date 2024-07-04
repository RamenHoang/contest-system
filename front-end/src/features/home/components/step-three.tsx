import { Form, Input } from 'antd';

type FieldType = {
  orgName?: string;
  address?: string;
  email?: string;
  phoneNumber?: string;
};

const StepThree = () => {
  const [form] = Form.useForm<FieldType>();

  return (
    <>
      <div className='text-[#757575] uppercase text-[23px] leading-[29px] font-semibold mb-4'>
        Thông tin Ban tổ chức
      </div>
      <div className='w-full'>
        <Form form={form} layout='vertical'>
          <div className='grid grid-cols-2 gap-3'>
            <Form.Item
              label='Tên'
              name='orgName'
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
            <Form.Item<FieldType>
              label='Số điện thoại'
              name='phoneNumber'
              rules={[{ required: true, message: 'Vui lòng nhập số điện thoại' }]}
            >
              <Input placeholder='Vui lòng nhập số điện thoại' size='large' />
            </Form.Item>
          </div>
        </Form>
      </div>
    </>
  );
};

export default StepThree;
