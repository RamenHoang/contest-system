import { Divider, Form, Input, Select } from 'antd';

// const normFile = (e: any) => {
//   if (Array.isArray(e)) {
//     return e;
//   }
//   return e?.fileList;
// };

export const FormSetup = () => {
  return (
    <>
      <div className='mb-2 text-sm flex'>
        Trộn nhiều đề thi.
        <p className='ml-2 text-red-500'>Thêm ngay</p>
      </div>
      <div className='flex items-center gap-1 mb-2'>
        <Select
          defaultValue='lzd'
          style={{ width: 240 }}
          options={[
            { value: 'lzd', label: 'de-thi-mau-lazada' },
            { value: 'tik', label: 'de-thi-mau-tiktok' },
            { value: 'spe', label: 'de-thi-mau-shopee' }
          ]}
        />
        <div className='w-[85px]'>
          <Input type='number' placeholder='TN' value='1' />
        </div>
        <div className='w-[85px]'>
          <Input type='number' placeholder='TL' value='0' />
        </div>
      </div>
      <div>
        Đề thi có <span className='text-blue-500 font-semibold'>1</span> câu trắc nghiệm và{' '}
        <span className='text-blue-500 font-semibold'>0</span> câu tự luận.{' '}
      </div>
      <Divider className='my-4' />
      <Form layout='vertical'>
        <Form.Item label='Thời gian làm bài (phút) (0: Không giới hạn)'>
          <Input placeholder='...' type='number' />
        </Form.Item>
        <Form.Item label='Hiển thị kết quả cho thí sinh'>
          <Input placeholder='Thể lệ cuộc thi..' />
        </Form.Item>
        <Form.Item label='Số lần làm bài (0: Không giới hạn)'>
          <Input placeholder='...' type='number' />
        </Form.Item>
      </Form>
    </>
  );
};
