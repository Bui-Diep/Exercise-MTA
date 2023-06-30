syms q1 q2 q3 q4
% Nhập thông số độ dài các khâu mô hình thực tế:
% a2 = 9.5 ;
% a3 = 10.8;
% a4 = 8.6;
% d1 = 5.0 ;
% Nhập thông số độ dài các khâu trong mô phỏng:
a2 = 12.1 ;
a3 = 11.9;
a4 = 15;
d1 = 7.5 ;
% Giả thiết góc quay θ4 luôn là 0 độ
q4= 0;
% Tọa độ điểm thao tác E mong muốn(cm):
x = 30;
y = 20;
z = 10;
% Giải hệ phương trình:
hpt = [cos(q1)*(a2*cos(q2)+a3*cos(q2+q3)+a4*cos(q2+q3+q4)) == x;
       sin(q1)*(a2*cos(q2)+a3*cos(q2+q3)+a4*cos(q2+q3+q4)) == y;
       a4*sin(q2+q3+q4)+a3*sin(q2+q4)+a2*sin(q2)+d1 == z];
[a, b, c] = solve(hpt,q1,q2,q3);
% Đổi rad sang độ:
goc1 = a*180/pi;
goc2 = b*180/pi;
goc3 = c*180/pi;
% Xuẩt kết quả:
fprintf('BASE: %.2f\n', goc1);
fprintf('SHOULDER: %.2f\n', goc2);
fprintf('ELBOW: %.2f\n', goc3);
fprintf('WRIST: %.2f\n', q4);