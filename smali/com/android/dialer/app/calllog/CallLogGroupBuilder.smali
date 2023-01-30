.class public Lcom/android/dialer/app/calllog/CallLogGroupBuilder;
.super Ljava/lang/Object;
.source "CallLogGroupBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;
    }
.end annotation


# static fields
.field public static final DAY_GROUP_NONE:I = -0x1

.field public static final DAY_GROUP_OTHER:I = 0x2

.field public static final DAY_GROUP_TODAY:I = 0x0

.field public static final DAY_GROUP_YESTERDAY:I = 0x1

.field private static final TIME:Landroid/text/format/Time;


# instance fields
.field private final mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    return-void
.end method

.method public constructor <init>(Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    return-void
.end method

.method private areBothBlocked(II)Z
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private areBothNotBlocked(II)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private areBothNotVoicemail(II)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getDayGroup(JJ)I
    .locals 1

    .line 253
    sget-object v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->TIME:Landroid/text/format/Time;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/contacts/common/util/DateUtils;->getDayDifference(Landroid/text/format/Time;JJ)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    return p2

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method private isSameAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 211
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public addGroups(Landroid/database/Cursor;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 78
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v3, v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {v3}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;->clearDayGroups()V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 88
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v5, 0x2

    .line 91
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x0

    .line 92
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 93
    invoke-direct {v0, v6, v7, v3, v4}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v6

    .line 94
    iget-object v7, v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {v7, v9, v10, v6}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    const/4 v7, 0x1

    .line 97
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 98
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v11, ""

    const/16 v12, 0x18

    if-lt v10, v12, :cond_1

    .line 99
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_1
    move-object v10, v11

    .line 100
    :goto_0
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x19

    if-lt v13, v12, :cond_2

    .line 101
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_2
    move-object v13, v11

    :goto_1
    const/4 v15, 0x4

    .line 102
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/16 v8, 0x12

    .line 103
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v5, 0x13

    .line 104
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 105
    invoke-static {v9, v10}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    move/from16 v24, v7

    move/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v22, v18

    move/from16 v23, v19

    .line 117
    :goto_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 119
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 120
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v12, :cond_3

    .line 122
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object v7, v11

    .line 124
    :goto_3
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v12, :cond_4

    .line 125
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object v8, v11

    .line 126
    :goto_4
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/16 v14, 0x12

    .line 127
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v6

    const/16 v14, 0x13

    .line 128
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 129
    invoke-static {v5, v7}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v25, v11

    move/from16 v11, v23

    .line 131
    invoke-virtual {v0, v9, v11, v5, v14}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result v14

    .line 133
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 134
    invoke-virtual {v13, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move-object/from16 v27, v8

    move-object/from16 v8, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v22

    .line 136
    invoke-direct {v0, v8, v15, v9, v6}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->isSameAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-eqz v14, :cond_6

    if-eqz v22, :cond_6

    if-eqz v23, :cond_6

    if-eqz v26, :cond_6

    move/from16 v14, v20

    .line 144
    invoke-direct {v0, v12, v14}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->areBothNotVoicemail(II)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 145
    invoke-direct {v0, v12, v14}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->areBothNotBlocked(II)Z

    move-result v20

    if-nez v20, :cond_5

    .line 146
    invoke-direct {v0, v12, v14}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->areBothBlocked(II)Z

    move-result v20

    if-eqz v20, :cond_6

    :cond_5
    move/from16 v5, v24

    add-int/lit8 v24, v5, 0x1

    move-object/from16 v22, v9

    move/from16 v23, v11

    move/from16 v20, v14

    move/from16 v6, v16

    move-object/from16 v5, v21

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object/from16 v21, v8

    goto :goto_5

    :cond_6
    move/from16 v8, v24

    const/4 v9, 0x2

    .line 152
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 153
    invoke-direct {v0, v10, v11, v3, v4}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->getDayGroup(JJ)I

    move-result v10

    .line 157
    iget-object v11, v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getPosition()I

    move-result v13

    sub-int/2addr v13, v8

    invoke-interface {v11, v13, v8}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(II)V

    .line 169
    invoke-static {v5, v7}, Lcom/android/dialer/util/DialerUtils;->isConferenceURICallLog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move-object/from16 v22, v6

    move/from16 v23, v8

    move v6, v10

    move/from16 v20, v12

    move-object/from16 v21, v15

    move-object/from16 v13, v27

    const/16 v24, 0x1

    move-object v10, v7

    const/4 v7, 0x0

    .line 174
    :goto_5
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 175
    iget-object v8, v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    invoke-interface {v8, v11, v12, v6}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;->setDayGroup(JI)V

    move-object v9, v5

    move-object/from16 v11, v25

    const/16 v5, 0x13

    const/4 v7, 0x1

    const/16 v8, 0x12

    const/16 v12, 0x18

    const/16 v14, 0x19

    const/4 v15, 0x4

    goto/16 :goto_2

    :cond_7
    move/from16 v8, v24

    .line 179
    iget-object v1, v0, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->mGroupCreator:Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;

    sub-int/2addr v2, v8

    invoke-interface {v1, v2, v8}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder$GroupCreator;->addGroup(II)V

    return-void
.end method

.method compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x40

    .line 220
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, ""

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    .line 224
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    move-object p1, v5

    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 231
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 235
    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    move-object v6, v2

    move-object v2, p2

    move-object p2, v6

    .line 242
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 217
    :cond_4
    :goto_1
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method equalNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 184
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->equalNumbers(Ljava/lang/String;ZLjava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method equalNumbers(Ljava/lang/String;ZLjava/lang/String;Z)Z
    .locals 2

    .line 188
    invoke-static {p1}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Lcom/android/dialer/phonenumberutil/PhoneNumberHelper;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    const-string p2, "[,;]"

    .line 191
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 192
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 194
    array-length p3, p1

    array-length p4, p2

    if-eq p3, p4, :cond_1

    goto :goto_1

    :cond_1
    move p3, v0

    .line 197
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_3

    .line 198
    aget-object p4, p1, p3

    aget-object v1, p2, p3

    invoke-static {p4, v1}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    return v0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0

    :cond_5
    if-eq p2, p4, :cond_6

    return v0

    .line 206
    :cond_6
    invoke-static {p1, p3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 189
    :cond_7
    :goto_2
    invoke-virtual {p0, p1, p3}, Lcom/android/dialer/app/calllog/CallLogGroupBuilder;->compareSipAddresses(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
