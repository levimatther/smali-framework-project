.class Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;
.super Ljava/lang/Object;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;-><init>(Landroid/content/Context;Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/calllog/CallLogListItemHelper;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Landroid/view/View;Lcom/android/dialer/app/calllog/DialerQuickContactBadge;Landroid/view/View;Lcom/android/dialer/app/calllog/PhoneCallDetailsViews;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/CheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->access$000(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/voicemail/VVMMainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/voicemail/VVMMainActivity;->onFocusChange(Landroid/view/View;Z)V

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$2;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-static {p1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->access$100(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onFocusChange"

    invoke-static {p1, p2}, Lcom/android/voicemail/impl/VvmLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
