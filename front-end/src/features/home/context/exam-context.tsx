import React, { createContext, useContext, useState } from 'react';

interface Exam {
  examBankingId: number;
}

interface ExamContextType {
  selectedExams: Exam[];
  setSelectedExams: (exams: Exam[]) => void;
}

const ExamContext = createContext<ExamContextType | undefined>(undefined);

export const ExamProvider = ({ children }: { children: React.ReactNode }) => {
  const [selectedExams, setSelectedExams] = useState<Exam[]>([]);

  return <ExamContext.Provider value={{ selectedExams, setSelectedExams }}>{children}</ExamContext.Provider>;
};

export const useExamContext = () => {
  const context = useContext(ExamContext);
  if (!context) {
    throw new Error('useExamContext must be used within an ExamProvider');
  }
  return context;
};
