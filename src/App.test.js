import { render, screen } from '@testing-library/react';
import App from './App';

test('renders devops assessment header', () => {
  render(<App />);
  const linkElement = screen.getByText(/DevOps Assessment Demo/i);
  expect(linkElement).toBeInTheDocument();
});
