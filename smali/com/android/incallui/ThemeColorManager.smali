.class public Lcom/android/incallui/ThemeColorManager;
.super Ljava/lang/Object;
.source "ThemeColorManager.java"


# instance fields
.field private backgroundColorBottom:I

.field private backgroundColorMiddle:I

.field private backgroundColorSolid:I

.field private backgroundColorTop:I

.field private final colorMap:Lcom/android/contacts/common/util/MaterialColorMapUtils;

.field private mCurrentPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mHighlightColor:I

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private pendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private primaryColor:I

.field private secondaryColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/common/util/MaterialColorMapUtils;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/incallui/ThemeColorManager;->mHighlightColor:I

    .line 59
    iput-object p2, p0, Lcom/android/incallui/ThemeColorManager;->colorMap:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    .line 60
    const-class p2, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/incallui/ThemeColorManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method public constructor <init>(Lcom/android/contacts/common/util/MaterialColorMapUtils;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcom/android/incallui/ThemeColorManager;->mHighlightColor:I

    .line 55
    iput-object p1, p0, Lcom/android/incallui/ThemeColorManager;->colorMap:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    return-void
.end method

.method private static applyAlpha(II)I
    .locals 0

    .line 157
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p0

    return p0
.end method

.method private getHighlightColor(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I
    .locals 1

    if-eqz p2, :cond_2

    .line 109
    iget-object v0, p0, Lcom/android/incallui/ThemeColorManager;->mCurrentPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p2, v0}, Landroid/telecom/PhoneAccountHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget p1, p0, Lcom/android/incallui/ThemeColorManager;->mHighlightColor:I

    return p1

    .line 112
    :cond_0
    iput-object p2, p0, Lcom/android/incallui/ThemeColorManager;->mCurrentPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 113
    iget-object v0, p0, Lcom/android/incallui/ThemeColorManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_1

    .line 114
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/incallui/ThemeColorManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/android/incallui/ThemeColorManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->mHighlightColor:I

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private updateThemeColors(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 79
    iget-object p2, p0, Lcom/android/incallui/ThemeColorManager;->colorMap:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    const p3, 0x7f0600ed

    .line 80
    invoke-virtual {p2, p3}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p2

    const p3, 0x7f0600e6

    .line 81
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorTop:I

    const p3, 0x7f0600e5

    .line 82
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorMiddle:I

    const p3, 0x7f0600e4

    .line 83
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorBottom:I

    const p3, 0x7f0600e9

    .line 84
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorSolid:I

    goto :goto_0

    .line 86
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/ThemeColorManager;->getHighlightColor(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)I

    move-result p2

    .line 87
    iget-object p3, p0, Lcom/android/incallui/ThemeColorManager;->colorMap:Lcom/android/contacts/common/util/MaterialColorMapUtils;

    invoke-virtual {p3, p2}, Lcom/android/contacts/common/util/MaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object p3

    const v0, 0x7f0600e7

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorTop:I

    const v0, 0x7f0600e3

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorMiddle:I

    const v0, 0x7f0600e2

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorBottom:I

    const v0, 0x7f0600e8

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorSolid:I

    if-eqz p2, :cond_1

    .line 95
    iget p1, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget p2, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorTop:I

    invoke-static {p1, p2}, Lcom/android/incallui/ThemeColorManager;->applyAlpha(II)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorTop:I

    .line 96
    iget p1, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget p2, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorMiddle:I

    invoke-static {p1, p2}, Lcom/android/incallui/ThemeColorManager;->applyAlpha(II)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorMiddle:I

    .line 97
    iget p1, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget p2, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorBottom:I

    invoke-static {p1, p2}, Lcom/android/incallui/ThemeColorManager;->applyAlpha(II)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorBottom:I

    .line 98
    iget p1, p3, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iget p2, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorSolid:I

    invoke-static {p1, p2}, Lcom/android/incallui/ThemeColorManager;->applyAlpha(II)I

    move-result p1

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorSolid:I

    :cond_1
    move-object p2, p3

    .line 102
    :goto_0
    iget p1, p2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->primaryColor:I

    .line 103
    iget p1, p2, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    iput p1, p0, Lcom/android/incallui/ThemeColorManager;->secondaryColor:I

    return-void
.end method


# virtual methods
.method public getBackgroundColorBottom()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorBottom:I

    return v0
.end method

.method public getBackgroundColorMiddle()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorMiddle:I

    return v0
.end method

.method public getBackgroundColorSolid()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorSolid:I

    return v0
.end method

.method public getBackgroundColorTop()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->backgroundColorTop:I

    return v0
.end method

.method public getPrimaryColor()I
    .locals 1

    .line 127
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->primaryColor:I

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/android/incallui/ThemeColorManager;->secondaryColor:I

    return v0
.end method

.method public onForegroundCallChanged(Landroid/content/Context;Lcom/android/incallui/call/DialerCall;)V
    .locals 1

    if-nez p2, :cond_0

    .line 69
    iget-object p2, p0, Lcom/android/incallui/ThemeColorManager;->pendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/ThemeColorManager;->updateThemeColors(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/incallui/call/DialerCall;->isSpam()Z

    move-result p2

    invoke-direct {p0, p1, v0, p2}, Lcom/android/incallui/ThemeColorManager;->updateThemeColors(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;Z)V

    :goto_0
    return-void
.end method

.method public setPendingPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/incallui/ThemeColorManager;->pendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method
