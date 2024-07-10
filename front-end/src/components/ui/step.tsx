import React, { useState, useEffect } from 'react';
import { Button, Steps, Tooltip } from 'antd';
import { useNavigate, useLocation, useParams } from 'react-router-dom';
import StepTwo from '~/features/home/components/step-two';
import StepThree from '~/features/home/components/step-three';
import StepFour from '~/features/home/components/step-four';
import StepFive from '~/features/home/components/step-five';
import { toSlug } from '~/utils/helpers';
import { IStartRequired } from '~/types';
import { useCompetition } from '~/features/competition/hooks/use-competition';
import RefreshableIframe from '~/components/ui/iframe';

const AntStep: React.FC = () => {
  const { id } = useParams();
  const { data: competitionData } = useCompetition();
  const competition: IStartRequired = competitionData?.data;
  const slug = toSlug(competition?.name || '');

  const steps = [
    {
      title: 'Tổng quan',
      content: (
        <div className=''>
          <RefreshableIframe src={`https://quiz-application-kmn.vercel.app/competition/cuoc-thi/intro/${id}/${slug}`} />
        </div>
      )
    },
    {
      title: 'Cài đặt đề thi',
      content: <StepTwo />
    },
    {
      title: 'Chọn đơn vị',
      content: <StepThree />
    },
    {
      title: 'Trang thông tin',
      content: <StepFour />
    },
    {
      title: 'Xuất bản',
      content: <StepFive />
    }
  ];

  const [current, setCurrent] = useState(0);
  const navigate = useNavigate();
  const location = useLocation();

  useEffect(() => {
    const searchParams = new URLSearchParams(location.search);
    const step = parseInt(searchParams.get('step') || '1', 10) - 1;
    if (step >= 0 && step < steps.length) {
      setCurrent(step);
    }
  }, [location]);

  const next = () => {
    setCurrent(current + 1);
    navigate(`/dashboard/contest/${id}/edit?step=${current + 2}`);
  };

  const prev = () => {
    setCurrent(current - 1);
    navigate(`/dashboard/contest/${id}/edit?step=${current}`);
  };

  const onChange = (value: number) => {
    setCurrent(value);
    navigate(`/dashboard/contest/${id}/edit?step=${value + 1}`);
  };

  const items = steps.map((item) => ({ key: item.title, title: item.title }));

  const contentStyle: React.CSSProperties = {
    marginTop: 16
  };

  return (
    <>
      <Steps className='px-16' labelPlacement='vertical' current={current} onChange={onChange} items={items} />
      <div style={contentStyle}>{steps[current].content}</div>
      <div style={{ marginTop: 36, textAlign: 'right' }}>
        {current > 0 && (
          <Button style={{ margin: '0 8px' }} onClick={() => prev()}>
            Quay lại
          </Button>
        )}
        {current === steps.length - 1 && (
          <Button type='primary' onClick={() => navigate('/dashboard/contest')}>
            Kết thúc
          </Button>
        )}
        {current < steps.length - 1 && (
          <Tooltip title='Nếu không chỉnh sửa'>
            <Button type='primary' onClick={() => next()}>
              Tiếp tục
            </Button>
          </Tooltip>
        )}
      </div>
    </>
  );
};

export default AntStep;
