.class public Lcom/android/contacts/common/util/ContactDisplayUtils;
.super Ljava/lang/Object;
.source "ContactDisplayUtils.java"


# static fields
.field public static final INTERACTION_CALL:I = 0x1

.field public static final INTERACTION_SMS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLabelForCallOrSms(Ljava/lang/Integer;Ljava/lang/CharSequence;ILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 64
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->isCustomPhoneType(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 71
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getSmsLabelResourceId(Ljava/lang/Integer;)I

    move-result p0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {p0}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getPhoneLabelResourceId(Ljava/lang/Integer;)I

    move-result p0

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "un-recognized interaction type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Defaulting to ContactDisplayUtils.INTERACTION_CALL."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "ContactDisplayUtils.getLabelForCallOrSms"

    invoke-static {v0, p1, p2}, Lcom/android/dialer/common/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    :cond_3
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static getPhoneLabelResourceId(Ljava/lang/Integer;)I
    .locals 1

    const v0, 0x7f1100e7

    if-nez p0, :cond_0

    return v0

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f11009d

    return p0

    :pswitch_0
    const p0, 0x7f1100e4

    return p0

    :pswitch_1
    const p0, 0x7f110094

    return p0

    :pswitch_2
    const p0, 0x7f1100fb

    return p0

    :pswitch_3
    const p0, 0x7f1100fa

    return p0

    :pswitch_4
    const p0, 0x7f1100f7

    return p0

    :pswitch_5
    const p0, 0x7f1100f6

    return p0

    :pswitch_6
    const p0, 0x7f1100ea

    return p0

    :pswitch_7
    const p0, 0x7f1100e8

    return p0

    :pswitch_8
    const p0, 0x7f1100e3

    return p0

    :pswitch_9
    const p0, 0x7f1100bf

    return p0

    :pswitch_a
    const p0, 0x7f11009a

    return p0

    :pswitch_b
    const p0, 0x7f110099

    return p0

    :pswitch_c
    const p0, 0x7f110098

    return p0

    :pswitch_d
    return v0

    :pswitch_e
    const p0, 0x7f1100e9

    return p0

    :pswitch_f
    const p0, 0x7f1100a9

    return p0

    :pswitch_10
    const p0, 0x7f1100aa

    return p0

    :pswitch_11
    const p0, 0x7f1100f9

    return p0

    :pswitch_12
    const p0, 0x7f1100e5

    return p0

    :pswitch_13
    const p0, 0x7f1100ab

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPreferredDisplayName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    .line 265
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 269
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static getPreferredSortName(Ljava/lang/String;Ljava/lang/String;Lcom/android/contacts/common/preference/ContactsPreferences;)Ljava/lang/String;
    .locals 2

    if-nez p2, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    return-object p0

    .line 294
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 298
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    return-object p0
.end method

.method public static getSmsLabelResourceId(Ljava/lang/Integer;)I
    .locals 1

    const v0, 0x7f110450

    if-nez p0, :cond_0

    return v0

    .line 153
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f110447

    return p0

    :pswitch_0
    const p0, 0x7f11044e

    return p0

    :pswitch_1
    const p0, 0x7f110442

    return p0

    :pswitch_2
    const p0, 0x7f110458

    return p0

    :pswitch_3
    const p0, 0x7f110457

    return p0

    :pswitch_4
    const p0, 0x7f110455

    return p0

    :pswitch_5
    const p0, 0x7f110454

    return p0

    :pswitch_6
    const p0, 0x7f110453

    return p0

    :pswitch_7
    const p0, 0x7f110451

    return p0

    :pswitch_8
    const p0, 0x7f11044d

    return p0

    :pswitch_9
    const p0, 0x7f11044c

    return p0

    :pswitch_a
    const p0, 0x7f110446

    return p0

    :pswitch_b
    const p0, 0x7f110445

    return p0

    :pswitch_c
    const p0, 0x7f110444

    return p0

    :pswitch_d
    return v0

    :pswitch_e
    const p0, 0x7f110452

    return p0

    :pswitch_f
    const p0, 0x7f110449

    return p0

    :pswitch_10
    const p0, 0x7f11044a

    return p0

    :pswitch_11
    const p0, 0x7f110456

    return p0

    :pswitch_12
    const p0, 0x7f11044f

    return p0

    :pswitch_13
    const p0, 0x7f11044b

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 218
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const/4 v1, -0x1

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_2

    .line 221
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    .line 222
    invoke-static {p1}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v3

    const/16 v4, 0x21

    .line 223
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 228
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getTtsSpannedPhoneNumber(Landroid/content/res/Resources;ILjava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 244
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 245
    invoke-static {p0, p2}, Lcom/android/contacts/common/util/ContactDisplayUtils;->getTelephoneTtsSpannable(Ljava/lang/String;Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    return-object p0
.end method

.method public static isCustomPhoneType(Ljava/lang/Integer;)Z
    .locals 1

    .line 48
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v0, 0x13

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

.method public static isPossiblePhoneNumber(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 206
    sget-object v0, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
