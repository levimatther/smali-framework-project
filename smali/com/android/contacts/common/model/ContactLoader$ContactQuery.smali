.class Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xf

.field public static final ACCOUNT_TYPE:I = 0x10

.field public static final ALT_DISPLAY_NAME:I = 0x4

.field public static final CARRIER_PRESENCE:I = 0x40

.field public static final CHAT_CAPABILITY:I = 0x34

.field static final COLUMNS:[Ljava/lang/String;

.field static final COLUMNS_INTERNAL:[Ljava/lang/String;

.field public static final CONTACT_ID:I = 0xd

.field public static final CONTACT_PRESENCE:I = 0x8

.field public static final CONTACT_STATUS:I = 0x9

.field public static final CONTACT_STATUS_LABEL:I = 0xc

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0xb

.field public static final CONTACT_STATUS_TIMESTAMP:I = 0xa

.field public static final CUSTOM_RINGTONE:I = 0x3c

.field public static final DATA1:I = 0x1b

.field public static final DATA10:I = 0x24

.field public static final DATA11:I = 0x25

.field public static final DATA12:I = 0x26

.field public static final DATA13:I = 0x27

.field public static final DATA14:I = 0x28

.field public static final DATA15:I = 0x29

.field public static final DATA2:I = 0x1c

.field public static final DATA3:I = 0x1d

.field public static final DATA4:I = 0x1e

.field public static final DATA5:I = 0x1f

.field public static final DATA6:I = 0x20

.field public static final DATA7:I = 0x21

.field public static final DATA8:I = 0x22

.field public static final DATA9:I = 0x23

.field public static final DATA_ID:I = 0x1a

.field public static final DATA_SET:I = 0x11

.field public static final DATA_SYNC1:I = 0x2a

.field public static final DATA_SYNC2:I = 0x2b

.field public static final DATA_SYNC3:I = 0x2c

.field public static final DATA_SYNC4:I = 0x2d

.field public static final DATA_VERSION:I = 0x2e

.field public static final DELETED:I = 0x19

.field public static final DIRTY:I = 0x12

.field public static final DISPLAY_NAME:I = 0x3

.field public static final DISPLAY_NAME_SOURCE:I = 0x1

.field public static final GROUP_SOURCE_ID:I = 0x32

.field public static final IS_PRIMARY:I = 0x2f

.field public static final IS_SUPERPRIMARY:I = 0x30

.field public static final IS_USER_PROFILE:I = 0x3d

.field public static final LAST_TIME_USED:I = 0x3f

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x31

.field public static final NAME_RAW_CONTACT_ID:I = 0x0

.field public static final PHONETIC_NAME:I = 0x5

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x3a

.field public static final PRESENCE:I = 0x33

.field public static final RAW_CONTACT_ID:I = 0xe

.field public static final SEND_TO_VOICEMAIL:I = 0x3b

.field public static final SOURCE_ID:I = 0x14

.field public static final STARRED:I = 0x7

.field public static final STATUS:I = 0x35

.field public static final STATUS_ICON:I = 0x37

.field public static final STATUS_LABEL:I = 0x38

.field public static final STATUS_RES_PACKAGE:I = 0x36

.field public static final STATUS_TIMESTAMP:I = 0x39

.field public static final SYNC1:I = 0x15

.field public static final SYNC2:I = 0x16

.field public static final SYNC3:I = 0x17

.field public static final SYNC4:I = 0x18

.field public static final TIMES_USED:I = 0x3e

.field public static final VERSION:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 64

    const-string v0, "name_raw_contact_id"

    const-string v1, "display_name_source"

    const-string v2, "lookup"

    const-string v3, "display_name"

    const-string v4, "display_name_alt"

    const-string v5, "phonetic_name"

    const-string v6, "photo_id"

    const-string v7, "starred"

    const-string v8, "contact_presence"

    const-string v9, "contact_status"

    const-string v10, "contact_status_ts"

    const-string v11, "contact_status_res_package"

    const-string v12, "contact_status_label"

    const-string v13, "contact_id"

    const-string v14, "raw_contact_id"

    const-string v15, "account_name"

    const-string v16, "account_type"

    const-string v17, "data_set"

    const-string v18, "dirty"

    const-string/jumbo v19, "version"

    const-string v20, "sourceid"

    const-string v21, "sync1"

    const-string v22, "sync2"

    const-string v23, "sync3"

    const-string v24, "sync4"

    const-string v25, "deleted"

    const-string v26, "data_id"

    const-string v27, "data1"

    const-string v28, "data2"

    const-string v29, "data3"

    const-string v30, "data4"

    const-string v31, "data5"

    const-string v32, "data6"

    const-string v33, "data7"

    const-string v34, "data8"

    const-string v35, "data9"

    const-string v36, "data10"

    const-string v37, "data11"

    const-string v38, "data12"

    const-string v39, "data13"

    const-string v40, "data14"

    const-string v41, "data15"

    const-string v42, "data_sync1"

    const-string v43, "data_sync2"

    const-string v44, "data_sync3"

    const-string v45, "data_sync4"

    const-string v46, "data_version"

    const-string v47, "is_primary"

    const-string v48, "is_super_primary"

    const-string v49, "mimetype"

    const-string v50, "group_sourceid"

    const-string v51, "mode"

    const-string v52, "chat_capability"

    const-string v53, "status"

    const-string v54, "status_res_package"

    const-string v55, "status_icon"

    const-string v56, "status_label"

    const-string v57, "status_ts"

    const-string v58, "photo_uri"

    const-string v59, "send_to_voicemail"

    const-string v60, "custom_ringtone"

    const-string v61, "is_user_profile"

    const-string v62, "times_used"

    const-string v63, "last_time_used"

    .line 853
    filled-new-array/range {v0 .. v63}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS_INTERNAL:[Ljava/lang/String;

    .line 923
    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "carrier_presence"

    .line 924
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
