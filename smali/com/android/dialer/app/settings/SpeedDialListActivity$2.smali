.class Lcom/android/dialer/app/settings/SpeedDialListActivity$2;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/settings/SpeedDialListActivity;->showAddSpeedDialDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

.field final synthetic val$number:I


# direct methods
.method constructor <init>(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    iput p2, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;->val$number:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 367
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    iget v0, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;->val$number:I

    invoke-static {p1, v0}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$100(Lcom/android/dialer/app/settings/SpeedDialListActivity;I)V

    .line 368
    iget-object p1, p0, Lcom/android/dialer/app/settings/SpeedDialListActivity$2;->this$0:Lcom/android/dialer/app/settings/SpeedDialListActivity;

    invoke-static {p1}, Lcom/android/dialer/app/settings/SpeedDialListActivity;->access$200(Lcom/android/dialer/app/settings/SpeedDialListActivity;)V

    return-void
.end method
