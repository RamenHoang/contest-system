import { useState } from 'react';
import { Footer } from '~/features/competition/components/footer';
import { Header } from '~/features/competition/components/header';
import AntModal from '~/features/competition/components/modal';
import { useCompetition } from '~/features/competition/hooks/use-competition';

const IntroPage = () => {
  const [isModalOpen, setIsModalOpen] = useState(false);

  // const navigate = useNavigate();
  // const { id, slug } = useParams(); // Assuming `slug` is the name of the parameter for "lich-su-304"

  const { data: competition } = useCompetition();

  const handleOpenModal = () => {
    setIsModalOpen(true);
    // const newPath = `/competition/cuoc-thi/start/${id}/${slug}`;
    // navigate(newPath);
  };

  return (
    <div>
      <Header data={competition?.data} />
      <main>
        <section>
          <div className='mx-auto py-6 lg:py-16 bg-no-repeat bg-[url("https://www.pixel4k.com/wp-content/uploads/2018/09/pattern-background-light-line-texture-4k_1536097739.jpg.webp")] bg-cover'>
            <div className='text-center text-green-700 text-xl lg:text-4xl font-bold uppercase'>
              Cuộc thi kết thúc trong
            </div>
            <div className='mt-4 lg:mt-8'>
              <div className='flex items-center justify-center gap-4 lg:gap-8 text-green-700'>
                <div className='px-4 py-6 shadow-md min-w-[70px] lg:min-w-[130px] text-center rounded-lg'>
                  <div className='text-xl lg:text-4xl text-green-700 font-bold'>02</div>
                  <div className='lg:text-xl mt-2 text-[#686868]'> Ngày </div>
                </div>
              </div>
            </div>
            <div className='mt-4 lg:mt-8 flex items-center justify-center gap-4 lg:gap-8'>
              <button
                type='button'
                className='inline-flex justify-center items-center px-4 py-2 border shadow-sm transition ease-in-out duration-150 gap-2 cursor-pointer min-h-[40px] disabled:cursor-not-allowed font-sans rounded-full bg-green-700 border-theme-color text-white hover:shadow-sm  text-lg lg:text-2xl min-w-[150px] lg:min-w-[200px]'
                onClick={handleOpenModal}
              >
                Tham gia
              </button>
              <button
                type='button'
                className='inline-flex justify-center items-center px-4 py-2 border shadow-sm transition ease-in-out duration-150 gap-2 cursor-pointer min-h-[40px] disabled:cursor-not-allowed font-sans rounded-full bg-green-700 border-theme-color text-white hover:shadow-sm  text-lg lg:text-2xl min-w-[150px] lg:min-w-[200px]'
              >
                Thể lệ
              </button>
              <div></div>
            </div>
            <div className='mt-4 lg:mt-8 text-lg lg:text-2xl text-[#C50300] text-center'>
              <div className='bg-[#FFF4D9] w-fit py-3 px-12 mx-auto rounded-full'>Bạn còn 2 lượt làm bài</div>
            </div>
          </div>
        </section>
        <section id='leaderboard'>
          <div className='container mx-auto px-2 lg:px-4 mt-6 lg:mt-16'>
            <div className='lg:hidden'>
              <div className='text-2xl lg:text-4xl text-green-700 font-bold grow mb-2 md:mb-0'> THỐNG KÊ </div>
              <div className='flex justify-center'>
                <div className='bg-white rounded-2xl w-full text-center py-2 mb-6'>
                  <div className='text-green-700 font-semibold text-3xl'>1481</div> lượt thi{' '}
                </div>
                <div className='bg-white rounded-2xl w-full text-center py-2 mb-6'>
                  <div className='text-green-700 font-semibold text-3xl'>1032</div> lượt đăng ký{' '}
                </div>
              </div>
            </div>
            <div className='flex gap-8'>
              <div className='hidden lg:block min-w-[250px]'>
                <div className='flex justify-center items-end h-full bg-no-repeat bg-cover bg-center rounded-2xl bg-[url("https://myaloha.vn/image/contest/leaderboard.png")]'>
                  <div className='grow mx-4'>
                    <div className='bg-white rounded-2xl w-full text-center py-2 mb-6'>
                      <div className='text-green-700 font-semibold text-3xl'>1481</div> lượt thi{' '}
                    </div>
                    <div className='bg-white rounded-2xl w-full text-center py-2 mb-6'>
                      <div className='text-green-700 font-semibold text-3xl'>1032</div> lượt đăng ký{' '}
                    </div>
                  </div>
                </div>
              </div>
              <div className='block grow'>
                <div className='block md:flex items-center mb-6'>
                  <div className='text-2xl lg:text-4xl text-green-700 font-bold grow mb-2 md:mb-0'>BẢNG XẾP HẠNG</div>
                </div>
                <div>
                  <div className='min-h-[550px]'>
                    <div className='grid-cols-12 rounded-xl py-6 px-6 mt-4 first:bg-[#ffe8ac] bg-[#F8F5F5] shadow-md grid'>
                      <div className='col-span-6 flex items-center gap-4'>
                        <div className='shrink-0 relative w-8 h-8 flex items-center justify-center font-semibold text-base bg-yellow-300 after:border-t-yellow-300 after:block after:absolute after:left-0 after:w-auto after:border-solid after:border-transparent after:mt-9 after:h-0 after:border-t-4 after:border-l-[16px] after:border-r-[16px]'>
                          1
                        </div>
                        <span className='hidden md:inline-block'>184 lượt đăng ký</span>
                      </div>
                      <div className='col-span-6 flex items-center'>
                        <span data-v-tippy=''>
                          <div className=''>Sư đoàn 9</div>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <div className='container mx-auto px-2 lg:px-4 mt-6 lg:mt-16'></div>
        <Footer />
      </main>
      <AntModal data={competition?.data} isModalOpen={isModalOpen} setIsModalOpen={setIsModalOpen} />
    </div>
  );
};

export default IntroPage;
