// DashboardCard.tsx
import React from 'react';

interface DashboardCardProps {
  imgSrc: string;
  title: string;
  text: string;
}

const DashboardCard: React.FC<DashboardCardProps> = ({ imgSrc, title, text }) => {
  return (
    <div className='p-2 shadow-lg rounded-2xl w-full max-w-[14rem] min-h-52'>
      <div className='p-4'>
        <img src={imgSrc} className='w-[40px] h-auto mt-4' alt='' />
        <div className='card-title mt-4 min-h-16'>{title}</div>
        <div className='card-text mt-4 text-2xl font-semibold'>{text}</div>
      </div>
    </div>
  );
};

export default DashboardCard;
