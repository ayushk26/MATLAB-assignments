function result = T(z,a,b,h,u_boundary,u_final)
result = rk4(h,a,b,z,u_boundary)- u_final ;
return
end

