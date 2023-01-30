.class public final Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GreetingListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivChecked:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

.field public tvGreetingName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter$ViewHolder;->this$0:Lcom/android/dialer/voicemail/settings/GreetingListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
