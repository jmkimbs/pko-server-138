--���ļ��У����ǿ��ܱ����ִ�еĺ�������������Ҫ���ϵ�ͼ��ǰ׺����after_destroy_entry_testpk
--���ļ�ÿ������ַ�����Ϊ255���������飬�������̽��

function config_entry(entry) 
    SetMapEntryEntiID(entry, 193,1) --���õ�ͼ���ʵ��ı�ţ��ñ�Ŷ�Ӧ��characterinfo.txt��������

end 

function after_create_entry(entry) 
    local copy_mgr = GetMapEntryCopyObj(entry, 0) --��������������󣬴˺���������ʽ��ڵĵ�ͼ�б�����ã�������ʽ��ڵĵ�ͼ���������ս����Ҫ���øýӿ�

    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    Notice("Announcement: According to reports, near Ascaron at ["..posx..","..posy.."]λ�ø�������һ��ͨ����ʥ���塷����ڣ�����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end

function after_destroy_entry_07xmas(entry)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) 
    Notice("�����㲥��������ṩ����Ϣ��ͨ����ʥ���塷������Ѿ���ʧ�ˡ����Ҽ�����ע��̨�Ĺ㲥��ף����졫��") 

end

function after_player_login_07xmas(entry, player_name)
    map_name, posx, posy, tmap_name = GetMapEntryPosInfo(entry) --ȡ��ͼ��ڵ�λ����Ϣ����ͼ�������꣬Ŀ���ͼ����
    ChaNotice(player_name, "Announcement: According to reports, near Ascaron at ["..posx..","..posy.."]λ�ø�������һ��ͨ����ʥ���塷����ڣ�����Ϣ��δ��ʵ�����йص�λע�⡣") --֪ͨ������������������

end

function begin_enter_07xmas(role, copy_mgr) 
	SystemNotice(role,"��ʼ���롶ʥ���塷") 
	MoveCity(role, "ʥ����")
end