.class Lcom/android/tct/common/DialerDialogActivity$1;
.super Ljava/lang/Object;
.source "DialerDialogActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/tct/common/DialerDialogActivity;->showRttMerge(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/tct/common/DialerDialogActivity;

.field final synthetic val$tctDialog:Landroid/app/TctDialog;


# direct methods
.method constructor <init>(Lcom/android/tct/common/DialerDialogActivity;Landroid/app/TctDialog;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/tct/common/DialerDialogActivity$1;->this$0:Lcom/android/tct/common/DialerDialogActivity;

    iput-object p2, p0, Lcom/android/tct/common/DialerDialogActivity$1;->val$tctDialog:Landroid/app/TctDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 130
    iget-object p1, p0, Lcom/android/tct/common/DialerDialogActivity$1;->val$tctDialog:Landroid/app/TctDialog;

    if-eqz p2, :cond_0

    const p2, 0x7f110409

    goto :goto_0

    :cond_0
    const p2, 0x7f110408

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/TctDialog;->setCenterButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/TctDialog;

    return-void
.end method
