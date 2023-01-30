.class public Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleMmiAccountSelectedCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 995
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;-><init>()V

    .line 996
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mContext:Landroid/content/Context;

    .line 997
    iput-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mInput:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;ZLjava/lang/String;)V
    .locals 0

    .line 1003
    iget-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleMmiAccountSelectedCallback;->mInput:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/android/dialer/telecom/TelecomUtil;->handleMmi(Landroid/content/Context;Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z

    return-void
.end method
