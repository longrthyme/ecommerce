

import { Outlet } from "react-router-dom";
import Sidebar from "../components/admin/SideBar";


const AdminLayout = () => {
  return (
    <div className="flex">
      {/* Sidebar on the left */}
      <Sidebar />

      {/* Content on the right */}
      <div className="flex-1 p-4">
        <Outlet /> {/* Render nested admin routes */}
      </div>
    </div>
  );
};

export default AdminLayout;
