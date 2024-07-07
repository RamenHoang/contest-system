import { Image } from 'antd';
import { format } from 'date-fns';
import { Link } from 'react-router-dom';
import { ICompetition } from '~/types';

function toSlug(str: string) {
  const from = 'àáãảạăằắẵẳặâầấẫẩậèéẽẻẹêềếễểệìíĩỉịòóõỏọôồốỗổộơờớỡởợùúũủụưừứữửựỳýỹỷỵđ';
  const to = 'aaaaaaaaaaaaaaaaaeeeeeeeeeeeiiiiiooooooooooooooooouuuuuuuuuuuyyyyyd';
  str = str.replace(/^\s+|\s+$/g, ''); // trim
  str = str.toLowerCase();

  // Remove accents, swap ñ for n, etc
  for (let i = 0, l = from.length; i < l; i++) {
    str = str.replace(new RegExp(from.charAt(i), 'g'), to.charAt(i));
  }

  str = str
    .replace(/[^a-z0-9 -]/g, '') // remove invalid chars
    .replace(/\s+/g, '-') // collapse whitespace and replace by -
    .replace(/-+/g, '-'); // collapse dashes

  return str;
}

export const CardContest = ({ competition }: { competition: ICompetition }) => {
  return (
    <div className='relative w-full mt-4'>
      <Link to={`competition/cuoc-thi/intro/${competition?.id}/${toSlug(competition?.name)}`}>
        <div className='p-2 shadow-lg rounded-2xl w-full max-w'>
          <div className='flex items-center gap-4'>
            <div className='flex-shrink-0' style={{ width: '240px' }}>
              <Image
                src={`http://localhost:8000` + competition?.bannerUrl}
                className='rounded-xl w-full h-auto'
                alt='Contest Banner'
              />
            </div>
            <div className='flex flex-col flex-grow'>
              <div className='text-base font-medium line-clamp-2 text-gray-600'>{competition?.name}</div>
            </div>
            <div className='flex flex-col w-[20%] md:shrink-0'>
              <div className='text-base font-medium line-clamp-2 text-gray-600'>{competition?.unitGroupName}</div>
            </div>
            <div className='hidden md:flex flex-col md:shrink-0 text-gray-500 font-light'>
              <div className='text-base line-clamp-1'>
                {format(new Date(competition?.timeStart), 'dd/MM/yyyy HH:mm:ss') ?? '-'}
              </div>
              <div className='text-base line-clamp-1'>
                {format(new Date(competition?.timeEnd), 'dd/MM/yyyy HH:mm:ss') ?? '-'}
              </div>
            </div>
          </div>
        </div>
      </Link>
    </div>
  );
};
