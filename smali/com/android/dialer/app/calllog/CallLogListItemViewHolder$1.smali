.class Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;
.super Ljava/lang/Object;
.source "CallLogListItemViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 340
    iput-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 343
    iget-object p1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget-object p1, p1, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->callDetailsEntries:Lcom/android/dialer/calldetails/CallDetailsEntries;

    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->buildContactNew()Lcom/android/dialer/dialercontact/DialerContact;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-virtual {v1}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->getCanReportCallerId()Z

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/android/dialer/app/calllog/IntentProvider;->getCallDetailIntentProvider(Lcom/android/dialer/calldetails/CallDetailsEntries;Lcom/android/dialer/dialercontact/DialerContact;Z)Lcom/android/dialer/app/calllog/IntentProvider;

    move-result-object p1

    .line 344
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->access$000(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/app/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 346
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    iget v0, v0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->verstat:I

    const-string/jumbo v1, "verstat"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget-object v0, p0, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder$1;->this$0:Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;

    invoke-static {v0}, Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;->access$000(Lcom/android/dialer/app/calllog/CallLogListItemViewHolder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
