import { Navigate, Route, Routes } from 'react-router-dom';
import { lazy } from 'react';

const HomePage = lazy(() => import('./pages/home-page'));
const ContestPage = lazy(() => import('./pages/manage-contest-page'));
const CreateContest = lazy(() => import('./pages/create-contest'));

const ExamPage = lazy(() => import('../quiz/pages/manage-exam-page'));
const CreateExam = lazy(() => import('../quiz/pages/create-exam'));
const EditExam = lazy(() => import('../quiz/pages/edit-exam'));

const HomeRoutes = () => {
  return (
    <Routes>
      <Route index path='/' element={<HomePage />} />
      <Route path='/dashboard/contest' element={<ContestPage />} />
      <Route path='/dashboard/contest/create' element={<CreateContest />} />
      <Route path='/dashboard/quiz' element={<ExamPage />} />
      <Route path='/dashboard/quiz/create' element={<CreateExam />} />
      <Route path='/dashboard/quiz/edit/:id' element={<EditExam />} />
      <Route path='*' element={<Navigate to='/not-found' />} />
    </Routes>
  );
};

export default HomeRoutes;
