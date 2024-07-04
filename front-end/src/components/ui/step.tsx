import React, { useState } from 'react';
import { Button, message, Steps } from 'antd';
import { useNavigate } from 'react-router-dom'; // Import useNavigate
import StepTwo from '~/features/home/components/step-two';
import StepThree from '~/features/home/components/step-three';
import StepFour from '~/features/home/components/step-four';

const steps = [
  {
    title: 'Tổng quan',
    content: (
      <div className=''>
        <iframe
          title='Contest Preview'
          src='https://myaloha.vn/dashboard/contest/84673/edit'
          className='rounded-sm pointer-events-auto w-full h-screen mx-auto shadow-xl border-[0.25rem] md:border-[0.75rem] border-gray-700'
        ></iframe>
      </div>
    )
  },
  {
    title: 'Cài đặt đề thi',
    content: <StepTwo />
  },
  {
    title: 'Trang thông tin',
    content: <StepThree />
  },
  {
    title: 'Xuất bản',
    content: <StepFour />
  }
];

const AntStep: React.FC = () => {
  const [current, setCurrent] = useState(0);
  const navigate = useNavigate(); // Use the useNavigate hook

  const next = () => {
    setCurrent(current + 1);
    navigate(`/dashboard/contest/create?step=${current + 2}`); // Update the URL
  };

  const prev = () => {
    setCurrent(current - 1);
    navigate(`/dashboard/contest/create?step=${current}`); // Update the URL
  };

  const onChange = (value: number) => {
    console.log('onChange:', value);
    setCurrent(value);
    navigate(`/dashboard/contest/create?step=${value + 1}`); // Update the URL
  };

  const items = steps.map((item) => ({ key: item.title, title: item.title }));

  const contentStyle: React.CSSProperties = {
    marginTop: 16
  };

  return (
    <>
      <Steps className='px-16' labelPlacement='vertical' current={current} onChange={onChange} items={items} />
      <div style={contentStyle}>{steps[current].content}</div>
      <div style={{ marginTop: 48, textAlign: 'right' }}>
        {current > 0 && (
          <Button style={{ margin: '0 8px' }} onClick={() => prev()}>
            Previous
          </Button>
        )}
        {current === steps.length - 1 && (
          <Button type='primary' onClick={() => message.success('Processing complete!')}>
            Done
          </Button>
        )}
        {current < steps.length - 1 && (
          <Button type='primary' onClick={() => next()}>
            Next
          </Button>
        )}
      </div>
    </>
  );
};

export default AntStep;
