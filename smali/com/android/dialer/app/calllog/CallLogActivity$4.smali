.class Lcom/android/dialer/app/calllog/CallLogActivity$4;
.super Ljava/lang/Object;
.source "CallLogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogActivity;->alertCallLogDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogActivity;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogActivity;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogActivity$4;->this$0:Lcom/android/dialer/app/calllog/CallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 836
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
