.class Lcom/android/contacts/common/list/ContactTileView$1;
.super Ljava/lang/Object;
.source "ContactTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/list/ContactTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/list/ContactTileView;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/list/ContactTileView;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 62
    iget-object p1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object p1, p1, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 69
    iget-object v0, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    iget-object v0, v0, Lcom/android/contacts/common/list/ContactTileView;->mListener:Lcom/android/contacts/common/list/ContactTileView$Listener;

    iget-object v1, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    .line 70
    invoke-virtual {v1}, Lcom/android/contacts/common/list/ContactTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/common/list/ContactTileView$1;->this$0:Lcom/android/contacts/common/list/ContactTileView;

    .line 71
    invoke-static {v2}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 69
    invoke-interface {v0, v1, v2, p1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    return-void
.end method
