.class public Lcom/android/incallui/contactgrid/BottomRow;
.super Ljava/lang/Object;
.source "BottomRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/contactgrid/BottomRow$Info;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInfo(Landroid/content/Context;Lcom/android/incallui/incall/protocol/PrimaryCallState;Lcom/android/incallui/incall/protocol/PrimaryInfo;Ljava/lang/String;)Lcom/android/incallui/contactgrid/BottomRow$Info;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 92
    iget v3, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ne v3, v6, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    .line 93
    :goto_0
    iget-boolean v13, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isForwardedNumber:Z

    .line 94
    iget-boolean v10, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWorkCall:Z

    .line 95
    iget-boolean v6, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isHdAudioCall:Z

    if-eqz v6, :cond_1

    if-nez v13, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v5

    .line 96
    :goto_1
    iget-boolean v11, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isHdAttempting:Z

    .line 102
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/contactgrid/BottomRow;->isIncoming(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    if-nez v7, :cond_3

    const v7, 0x7f1102b9

    .line 103
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_2
    :goto_2
    move v9, v3

    move v15, v4

    move v14, v5

    :goto_3
    move v12, v6

    goto/16 :goto_8

    .line 104
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/contactgrid/BottomRow;->isIncoming(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-boolean v7, v2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->isSpam:Z

    if-eqz v7, :cond_4

    const v6, 0x7f110166

    .line 106
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    move v9, v3

    move v14, v4

    move v15, v14

    move v12, v5

    goto/16 :goto_8

    .line 110
    :cond_4
    iget v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_e

    iget v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_5

    goto/16 :goto_6

    .line 125
    :cond_5
    iget-object v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callbackNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const v3, 0x7f110165

    new-array v7, v4, [Ljava/lang/Object;

    .line 127
    iget-object v8, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->callbackNumber:Ljava/lang/String;

    .line 130
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    .line 128
    invoke-virtual {v0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move v15, v4

    move v9, v5

    move v14, v9

    goto :goto_3

    .line 133
    :cond_6
    iget v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_9

    iget v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v8, 0xd

    if-ne v7, v8, :cond_7

    goto :goto_4

    .line 154
    :cond_7
    iget v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_8

    const v7, 0x7f110385

    .line 155
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 160
    :cond_8
    iget-boolean v4, v2, Lcom/android/incallui/incall/protocol/PrimaryInfo;->nameIsNumber:Z

    const-string v7, ""

    goto :goto_2

    .line 134
    :cond_9
    :goto_4
    iget-object v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    iget-boolean v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-nez v7, :cond_a

    const v7, 0x7f11027c

    new-array v8, v4, [Ljava/lang/Object;

    .line 135
    iget-object v9, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->connectionLabel:Ljava/lang/String;

    aput-object v9, v8, v5

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 137
    :cond_a
    iget-boolean v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isVideoCall:Z

    if-eqz v7, :cond_c

    .line 138
    iget-boolean v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->isWifi:Z

    if-eqz v7, :cond_b

    const v7, 0x7f1102b8

    .line 139
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    goto :goto_5

    :cond_b
    const v7, 0x7f1102b7

    .line 141
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 145
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, -0x1

    const-string v9, "AssistantDialingNumberChanged"

    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_d

    const v7, 0x7f11006a

    .line 147
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f110162

    .line 149
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 111
    :cond_e
    :goto_6
    iget-object v7, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v7}, Landroid/telecom/DisconnectCause;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .line 113
    iget-object v8, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v8}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, v1, Lcom/android/incallui/incall/protocol/PrimaryCallState;->disconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v8}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v8

    const-string v9, "IMS_MERGED_SUCCESSFULLY"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    move v8, v4

    goto :goto_7

    :cond_f
    move v8, v5

    .line 116
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    if-nez v8, :cond_2

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f11027a

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f1104a0

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 119
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v9, "#F8984C"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v7, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 121
    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/16 v12, 0x11

    invoke-virtual {v8, v7, v5, v9, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    move v9, v3

    move v15, v4

    move v14, v5

    move v12, v6

    move-object v7, v8

    .line 163
    :goto_8
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/contactgrid/BottomRow;->getLabelForPhoneNumber(Lcom/android/incallui/incall/protocol/PrimaryInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 166
    invoke-static {}, Lcom/android/tct/common/RttManager;->getInstance()Lcom/android/tct/common/RttManager;

    move-result-object v2

    invoke-virtual {v2, v0, v7, v1}, Lcom/android/tct/common/RttManager;->getCallStateLabel(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/android/incallui/incall/protocol/PrimaryCallState;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 167
    new-instance v0, Lcom/android/incallui/contactgrid/BottomRow$Info;

    move-object v6, v0

    invoke-direct/range {v6 .. v15}, Lcom/android/incallui/contactgrid/BottomRow$Info;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZZZZZ)V

    return-object v0
.end method

.method private static getLabelForPhoneNumber(Lcom/android/incallui/incall/protocol/PrimaryInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->location:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 182
    iget-object p0, p0, Lcom/android/incallui/incall/protocol/PrimaryInfo;->location:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isIncoming(Lcom/android/incallui/incall/protocol/PrimaryCallState;)Z
    .locals 2

    .line 203
    iget v0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/android/incallui/incall/protocol/PrimaryCallState;->state:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static spanDisplayNumber(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 199
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
