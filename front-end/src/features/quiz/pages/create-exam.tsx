import { Button, Input } from 'antd';
import { useState } from 'react';
import { QuizComponent } from '~/features/quiz/components/quiz';
import { useCreateExam } from '~/features/quiz/hooks/use-create-exam';
import { IQuestion } from '~/types';

const CreateExam = () => {
  const [title, setTitle] = useState('');
  const [questions, setQuestions] = useState<IQuestion[]>([]);

  const { mutate: createExam } = useCreateExam();

  const handleAddQuestion = (questionData: IQuestion) => {
    setQuestions([...questions, questionData]);
  };

  const handleSubmitExam = () => {
    const examData = {
      title,
      totalMCQuestion: questions.length,
      totalEssayQuestion: 0,
      questions: questions
    };

    console.log(examData);

    createExam(examData);
  };

  console.log(questions);

  return (
    <div className='p-5'>
      <div className='text-[#757575] uppercase text-[23px] leading-[29px] font-semibold mb-4'> Tạo bài thi </div>
      <div className='flex items-center gap-2 bg-blue-100 rounded-md p-4 mb-4'>
        <span className='font-normal min-w-fit bg-blue-500 text-white px-4 py-2 rounded-md'>Tên đề thi</span>
        <Input size='large' value={title} onChange={(e) => setTitle(e.target.value)} placeholder='Nhập tên bài thi' />
      </div>
      {questions.map((question, index) => (
        <QuizComponent key={index} questionNumber={index + 1} onAddQuestion={handleAddQuestion} question={question} />
      ))}
      <QuizComponent questionNumber={questions.length + 1} onAddQuestion={handleAddQuestion} />
      <Button type='primary' onClick={handleSubmitExam}>
        Submit Exam
      </Button>
    </div>
  );
};

export default CreateExam;
