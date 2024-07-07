import React, { useState } from 'react';
import { Button, Radio, Space, message } from 'antd';

const questions = [
  {
    question: 'Theo Hiệp định Giơnevơ, sẽ tổ chức Hiệp thương hai miền vào thời gian nào?',
    options: ['07/1955', '07/1956', '07/1957'],
    correctAnswer: 0
  },
  {
    question: 'Thủ đô của Việt Nam là gì?',
    options: ['Hà Nội', 'Hồ Chí Minh', 'Đà Nẵng'],
    correctAnswer: 0
  },
  {
    question: 'Tỉnh nào có diện tích lớn nhất Việt Nam?',
    options: ['Nghệ An', 'Gia Lai', 'Đắk Lắk'],
    correctAnswer: 0
  },
  {
    question: 'Ai là Chủ tịch Hồ Chí Minh?',
    options: ['Nguyễn Ái Quốc', 'Nguyễn Tất Thành', 'Nguyễn Sinh Cung'],
    correctAnswer: 0
  }
];

const Quiz = () => {
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [selectedOptions, setSelectedOptions] = useState(Array(questions.length).fill(null));
  const [results, setResults] = useState([]);

  const handleNext = () => {
    if (currentQuestion < questions.length - 1) {
      setCurrentQuestion(currentQuestion + 1);
    }
  };

  const handlePrev = () => {
    if (currentQuestion > 0) {
      setCurrentQuestion(currentQuestion - 1);
    }
  };

  const handleSelectOption = (e) => {
    const newSelectedOptions = [...selectedOptions];
    newSelectedOptions[currentQuestion] = e.target.value;
    setSelectedOptions(newSelectedOptions);
  };

  const handleQuickNav = (index) => {
    setCurrentQuestion(index);
  };

  const handleSubmit = () => {
    if (selectedOptions.includes(null)) {
      message.error('Vui lòng trả lời tất cả các câu hỏi trước khi nộp bài.');
      return;
    }
    const resultData = questions.map((question, index) => ({
      question: question.question,
      chooseAnswer: selectedOptions[index]
    }));
    setResults(resultData);
    message.success('Bài kiểm tra đã được nộp!');
  };

  return (
    <div className='quiz-container max-w-xl mx-auto p-4 border border-gray-200 rounded-lg bg-white'>
      {results.length === 0 ? (
        <>
          <div className='question-section mb-4'>
            <h4 className='text-xl font-bold mb-2'>Câu {currentQuestion + 1}</h4>
            <p className='text-lg mb-4'>{questions[currentQuestion].question}</p>
            <Radio.Group onChange={handleSelectOption} value={selectedOptions[currentQuestion]} className='w-full'>
              <Space direction='vertical' className='w-full'>
                {questions[currentQuestion].options.map((option, index) => (
                  <Radio value={index} key={index} className='w-full'>
                    {option}
                  </Radio>
                ))}
              </Space>
            </Radio.Group>
          </div>

          <div className='navigation-section flex justify-between mb-4'>
            <Button onClick={handlePrev} disabled={currentQuestion === 0}>
              Trước
            </Button>
            <Button onClick={handleNext} disabled={currentQuestion === questions.length - 1}>
              Tiếp
            </Button>
          </div>

          <div className='quick-nav-section flex justify-center gap-2 mb-4'>
            {questions.map((_, index) => (
              <Button
                key={index}
                shape='circle'
                onClick={() => handleQuickNav(index)}
                type={index === currentQuestion ? 'primary' : 'default'}
                style={{
                  backgroundColor: selectedOptions[index] !== null ? '#52c41a' : 'default',
                  borderColor: selectedOptions[index] !== null ? '#52c41a' : 'default'
                }}
              >
                {index + 1}
              </Button>
            ))}
          </div>

          <Button type='primary' onClick={handleSubmit} className='w-full'>
            Nộp bài
          </Button>
        </>
      ) : (
        <div className='results-section'>
          <h2 className='text-2xl font-bold mb-4'>Kết quả</h2>
          {results.map((result, index) => (
            <div key={index} className='mb-4'>
              <p className='text-lg font-bold'>{`Câu ${index + 1}: ${result.question}`}</p>
              <p className='text-lg'>{`Bạn đã chọn: ${questions[index].options[result.chooseAnswer]}`}</p>
            </div>
          ))}
        </div>
      )}
    </div>
  );
};

export default Quiz;
