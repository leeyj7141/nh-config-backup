#!/bin/bash 



SELECT * FROM volumes WHERE id = '734efdf3-8290-463a-8c36-fdbacd6c9f24';

DELETE FROM volume_glance_metadata WHERE volume_id = '734efdf3-8290-463a-8c36-fdbacd6c9f24';

DELETE FROM volume_metadata WHERE volume_id = '734efdf3-8290-463a-8c36-fdbacd6c9f24';

DELETE FROM volume_admin_metadata WHERE volume_id = '734efdf3-8290-463a-8c36-fdbacd6c9f24';

DELETE FROM volumes WHERE id = '734efdf3-8290-463a-8c36-fdbacd6c9f24';

# ----- #
DELETE FROM volume_attachment WHERE volume_id = '93cafff7-7264-4756-b20a-d757c645e590';

DELETE FROM volume_glance_metadata WHERE volume_id = '93cafff7-7264-4756-b20a-d757c645e590';

DELETE FROM volume_metadata WHERE volume_id = '93cafff7-7264-4756-b20a-d757c645e590';

DELETE FROM volume_admin_metadata WHERE volume_id = '93cafff7-7264-4756-b20a-d757c645e590';

DELETE FROM volumes WHERE id = '93cafff7-7264-4756-b20a-d757c645e590';


# ----- # 

DELETE FROM volume_attachment WHERE volume_id = 'c3df4ba8-eee1-44a2-ab64-99646c2f4363';

DELETE FROM volume_glance_metadata WHERE volume_id = 'c3df4ba8-eee1-44a2-ab64-99646c2f4363';

DELETE FROM volume_metadata WHERE volume_id = 'c3df4ba8-eee1-44a2-ab64-99646c2f4363';

DELETE FROM volume_admin_metadata WHERE volume_id = 'c3df4ba8-eee1-44a2-ab64-99646c2f4363';

DELETE FROM volumes WHERE id = 'c3df4ba8-eee1-44a2-ab64-99646c2f4363';
