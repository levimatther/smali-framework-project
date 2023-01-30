.class final Lcom/android/dialer/app/SpecialCharSequenceMgr$1;
.super Ljava/lang/Object;
.source "SpecialCharSequenceMgr.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/SpecialCharSequenceMgr;->handleDiagProtector(Landroid/content/Context;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 322
    sget-object p1, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    invoke-virtual {p1}, Landroid/app/TctDialog;->dismiss()V

    const/4 p1, 0x0

    .line 323
    sput-object p1, Lcom/android/dialer/app/SpecialCharSequenceMgr;->mTctDialog:Landroid/app/TctDialog;

    return-void
.end method
