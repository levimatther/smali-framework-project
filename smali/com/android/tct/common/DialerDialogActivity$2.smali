.class Lcom/android/tct/common/DialerDialogActivity$2;
.super Ljava/lang/Object;
.source "DialerDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tct/common/DialerDialogActivity;->showBlockSuppressionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tct/common/DialerDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/tct/common/DialerDialogActivity;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/android/tct/common/DialerDialogActivity$2;->this$0:Lcom/android/tct/common/DialerDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/android/tct/common/DialerDialogActivity$2;->this$0:Lcom/android/tct/common/DialerDialogActivity;

    invoke-virtual {p1}, Lcom/android/tct/common/DialerDialogActivity;->finish()V

    return-void
.end method
