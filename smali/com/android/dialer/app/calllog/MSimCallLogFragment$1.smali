.class Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;
.super Ljava/lang/Object;
.source "MSimCallLogFragment.java"

# interfaces
.implements Lcom/android/dialer/app/contactinfo/ContactInfoCache$OnContactInfoChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/app/calllog/MSimCallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContactInfoChanged()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$000(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/dialer/app/calllog/MSimCallLogFragment$1;->this$0:Lcom/android/dialer/app/calllog/MSimCallLogFragment;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/MSimCallLogFragment;->access$000(Lcom/android/dialer/app/calllog/MSimCallLogFragment;)Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
