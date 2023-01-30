.class public Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;
.super Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.source "SpecialCharSequenceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandleAdnEntryAccountSelectedCallback"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCookie:Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;

.field private final mQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;)V
    .locals 0

    .line 975
    invoke-direct {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;-><init>()V

    .line 976
    iput-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mContext:Landroid/content/Context;

    .line 977
    iput-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    .line 978
    iput-object p3, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mCookie:Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;

    return-void
.end method


# virtual methods
.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;ZLjava/lang/String;)V
    .locals 0

    .line 984
    iget-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/dialer/telecom/TelecomUtil;->getAdnUriForPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object p1

    .line 985
    iget-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mQueryHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    iget-object p3, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$HandleAdnEntryAccountSelectedCallback;->mCookie:Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;

    invoke-static {p2, p3, p1}, Lcom/android/dialer/app/SpecialCharSequenceMgr;->access$000(Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;Landroid/net/Uri;)V

    return-void
.end method
