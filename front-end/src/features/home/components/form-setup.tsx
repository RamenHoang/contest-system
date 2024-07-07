import { Button, Divider, Form, Input, Select } from 'antd';
import { useState } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { useSetupCompetition } from '~/features/home/hooks/use-setup-competition';
import { useExams } from '~/features/quiz/hooks/use-exams';
import { IExam, ISetupCompetition } from '~/types';

export const FormSetup = () => {
  const navigate = useNavigate();
  const { data: exams } = useExams();

  const { id } = useParams();
  console.log(id);

  const [examIds, setExamIds] = useState<number[]>([]);

  const [form] = Form.useForm<ISetupCompetition>();

  const { mutate: setUpCompetition } = useSetupCompetition();

  const options = exams?.data.map((data: IExam) => ({
    value: data?.id,
    label: data?.title
  }));

  const handleSubmit = (data: ISetupCompetition) => {
    console.log(data);

    const finalData = {
      ...data,
      examIds
    };

    console.log(finalData);

    setUpCompetition(finalData, {
      onSuccess: () => {
        navigate('/dashboard/contest');
      }
    });
  };

  return (
    <>
      <div className='mb-2 text-sm flex'>
        Trộn nhiều đề thi.
        <p className='ml-2 text-red-500'>Thêm ngay</p>
      </div>
      <div className='flex items-center gap-1 mb-2'>
        <Select
          mode='multiple'
          onChange={(selectedItems) => {
            const selectedIds = selectedItems.map((item: number) => Number(item));
            setExamIds(selectedIds);
          }}
          defaultValue={options?.[0]?.id}
          style={{ width: 240 }}
          options={options}
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
      <Form form={form} layout='vertical' onFinish={handleSubmit}>
        <Form.Item label='Thời gian làm bài (phút) (0: Không giới hạn)' name='testDuration'>
          <Input placeholder='Thời gian làm bài' type='number' />
        </Form.Item>
        <Form.Item label='Hiển thị kết quả cho thí sinh'>
          <Input placeholder='Thể lệ cuộc thi..' />
        </Form.Item>
        <Form.Item label='Số lần làm bài (0: Không giới hạn)' name='testAttempts'>
          <Input placeholder='Số lần làm bài..' type='number' />
        </Form.Item>

        <div className='mt-5 mb-2 flex justify-end gap-3'>
          <Button size='middle' htmlType='submit' type='primary'>
            Tiếp tục
          </Button>
        </div>
      </Form>
    </>
  );
};
