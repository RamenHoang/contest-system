import { X } from 'lucide-react';
import { useLocation } from 'react-router-dom';
import AntStep from '~/components/ui/step';
import { FormContest, FormSetup } from '~/features/home/components/index';

const CreateContest = () => {
  const location = useLocation();
  const searchParams = new URLSearchParams(location.search);
  const step = searchParams.get('step');

  const renderForm = () => {
    switch (step) {
      case '1':
        return <FormContest />;
      case '2':
        return <FormSetup />;
      // Add more cases for additional steps/forms
      default:
        return <FormContest />;
    }
  };

  return (
    <>
      <div className='min-h-(calc(100vh - 70px)) transition-[padding] duration-300 xl:pr-[333px]'>
        <div className='p-4 h-full max-w-5xl mx-auto'>
          <div className='px-10'>
            <AntStep />
          </div>
        </div>
      </div>
      <div className='translate-x-0 delay-300 fixed z-[2] h-[calc(100vh-70px)] bg-white transition-transform duration-300 right-0 top-[70px] border-gray-200 border-solid w-[333px]'>
        <div className='fixed border border-gray-500 hover:border-gray-500 text-gray-300 hover:text-gray-500 rounded-full -left-[11px] hover:scale-110 hover:cursor-pointer transition-all duration-300 top-20 right-full w-5 h-5 flex items-center justify-center bg-gray-300'>
          <X className='w-4 h-4' color='gray' />
        </div>
        <div className='h-[calc(100vh-70px)] p-4 min-h-full overflow-auto'>
          <div className='pt-10'>{renderForm()}</div>
        </div>
      </div>
    </>
  );
};

export default CreateContest;
