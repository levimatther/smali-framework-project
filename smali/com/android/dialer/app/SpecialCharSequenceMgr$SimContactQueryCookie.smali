.class Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/SpecialCharSequenceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimContactQueryCookie"
.end annotation


# instance fields
.field public contactNum:I

.field private mHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

.field private mToken:I

.field public progressDialog:Landroid/app/ProgressDialog;

.field private textField:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(ILcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;I)V
    .locals 0

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->contactNum:I

    .line 1028
    iput-object p2, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    .line 1029
    iput p3, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    return-void
.end method


# virtual methods
.method public declared-synchronized getTextField()Landroid/widget/EditText;
    .locals 1

    monitor-enter p0

    .line 1034
    :try_start_0
    iget-object v0, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    monitor-enter p0

    .line 1049
    :try_start_0
    iget-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 1050
    iget-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 p1, 0x0

    .line 1055
    iput-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;

    .line 1058
    iget-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->mHandler:Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;

    iget v0, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->mToken:I

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/SpecialCharSequenceMgr$QueryHandler;->cancelOperation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1059
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTextField(Landroid/widget/EditText;)V
    .locals 0

    monitor-enter p0

    .line 1039
    :try_start_0
    iput-object p1, p0, Lcom/android/dialer/app/SpecialCharSequenceMgr$SimContactQueryCookie;->textField:Landroid/widget/EditText;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1040
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
