import { Link } from 'react-router-dom';
import AntDropdown from '~/components/ui/dropdown';

const AntHeader = () => {
  return (
    <header>
      <nav className='fixed top-0 left-0 right-0 z-[3] px-3 bg-white border-b shadow-sm py-2 flex items-center h-16'>
        <div className='2xl:container flex flex-wrap items-center justify-between 2xl:mx-auto grow'>
          <Link className='flex items-center gap-x-2' to='/'>
            <img src='/public/vite.svg' alt='logo' />
            <p className='text-xl font-medium text-orange-500'>Ahamove</p>
          </Link>
          <AntDropdown />
        </div>
      </nav>
    </header>
  );
};

export default AntHeader;
