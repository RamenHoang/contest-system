import { Button } from 'antd';
import React, { useState } from 'react';

const RefreshableIframe = ({ src }: { src: string }) => {
  const [refreshKey, setRefreshKey] = useState(0);

  const refreshIframe = () => {
    setRefreshKey((prevKey) => prevKey + 1);
  };

  return (
    <div className='flex flex-col gap-2 items-end'>
      <Button className='text-white bg-cyan-600 hover:!bg-cyan-700 hover:!text-white' onClick={refreshIframe}>
        Tải lai trang
      </Button>
      <iframe
        key={refreshKey}
        src={src}
        className='rounded-sm pointer-events-auto w-full h-screen mx-auto shadow-xl border-[0.25rem] md:border-[0.75rem] border-gray-700'
      ></iframe>
    </div>
  );
};

export default RefreshableIframe;
