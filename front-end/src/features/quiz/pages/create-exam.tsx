import { Button, Input } from 'antd';
import { useEffect, useState } from 'react';
import { QuizComponent } from '~/features/quiz/components/quiz';
import { useCreateOrUpdateQuestion } from '~/features/quiz/hooks/use-create-update-question';
import { useExam } from '~/features/quiz/hooks/use-exam';
import { useUpdateExam } from '~/features/quiz/hooks/use-update-exam';
import { IQuestion } from '~/types';

const CreateExam = () => {
  const [title, setTitle] = useState('');
  const [questions, setQuestions] = useState<IQuestion[]>([]);

  const { mutate: createOrUpdateQuestion } = useCreateOrUpdateQuestion();
  const { mutate: updateExam } = useUpdateExam();
  const { data: exam } = useExam();

  console.log(exam);

  useEffect(() => {
    if (exam?.data?.title) {
      setTitle(exam.data.title);
      setQuestions(exam.data.questions || []); // Initialize questions from fetched exam data
    }
  }, [exam?.data?.title, exam?.data?.questions]);

  const handleAddQuestion = (questionData: Partial<IQuestion>, isUpdate: boolean) => {
    if (Array.isArray(questionData)) {
      console.error('questionData should be an object, not an array');
    } else {
      setQuestions((prevQuestions) => {
        console.log('Before update/add:', prevQuestions); // Debug log

        let updatedQuestions;
        if (isUpdate) {
          // Update the existing question
          updatedQuestions = prevQuestions.map((q) => (q.id === questionData.id ? questionData : q));
        } else {
          // Add new question
          updatedQuestions = [...prevQuestions, questionData];
        }

        console.log('After update/add:', updatedQuestions); // Debug log
        return updatedQuestions;
      });
    }
  };

  const handleSubmitQuestion = () => {
    createOrUpdateQuestion(questions);
  };

  const handleUpdateExamHeader = () => {
    const examHeaderData = {
      title,
      totalMCQuestion: questions.length,
      totalEssayQuestion: 0
    };
    updateExam(examHeaderData);
  };

  return (
    <div className='p-5'>
      <div className='text-[#757575] uppercase text-[23px] leading-[29px] font-semibold mb-4'> Tạo bài thi </div>
      <div className='flex items-center gap-2 bg-blue-100 rounded-md p-4 mb-4'>
        <span className='font-normal min-w-fit bg-blue-500 text-white px-4 py-2 rounded-md'>Tên đề thi</span>
        <Input
          size='large'
          value={title}
          onChange={(e) => setTitle(e.target.value)}
          placeholder='Nhập tên bài thi'
          onPressEnter={handleUpdateExamHeader}
          onBlur={handleUpdateExamHeader}
        />
      </div>
      {questions.map((question, index) => (
        <QuizComponent key={index} questionNumber={index + 1} onAddQuestion={handleAddQuestion} question={question} />
      ))}
      <QuizComponent questionNumber={questions.length + 1} onAddQuestion={handleAddQuestion} />
      <Button type='primary' onClick={handleSubmitQuestion}>
        Lưu bộ câu hỏi
      </Button>
    </div>
  );
};

export default CreateExam;
