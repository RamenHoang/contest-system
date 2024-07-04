import { Image } from 'antd';
import { Link } from 'react-router-dom';
import { IContest } from '~/types';

export const CardContest = ({ contest }: { contest: IContest }) => {
  return (
    <div className='relative w-full mt-4'>
      <Link to='https://myaloha.vn/ct/5E9Q55'>
        <div className='p-2 shadow-lg rounded-2xl w-full max-w'>
          <div className='flex items-center gap-4'>
            <div className='flex-shrink-0' style={{ width: '240px' }}>
              <Image src={contest?.imageUrl} className='rounded-xl w-full h-auto' alt='Contest Banner' />
            </div>
            <div className='flex flex-col flex-grow'>
              <div className='text-base font-bold line-clamp-2 text-gray-600'>{contest?.title}</div>
            </div>
            <div className='flex flex-col w-[20%] md:shrink-0'>
              <div className='text-base font-bold line-clamp-2 text-gray-600'>{contest?.author}</div>
            </div>
            <div className='hidden md:flex flex-col md:shrink-0 text-gray-500 font-light'>
              <div className='text-base line-clamp-1'>{contest?.startDate}</div>
              <div className='text-base line-clamp-1'>{contest?.endDate}</div>
            </div>
          </div>
        </div>
      </Link>
    </div>
  );
};
