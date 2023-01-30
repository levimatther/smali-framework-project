.class Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;
.super Ljava/lang/Object;
.source "PhoneFavoriteTileView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dialer/app/list/PhoneFavoriteTileView;->createClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;


# direct methods
.method constructor <init>(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 123
    iget-object p1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {p1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$100(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcom/android/dialer/callintent/CallSpecificAppData;->newBuilder()Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/dialer/callintent/CallInitiationType$Type;->SPEED_DIAL:Lcom/android/dialer/callintent/CallInitiationType$Type;

    .line 129
    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setCallInitiationType(Lcom/android/dialer/callintent/CallInitiationType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    .line 130
    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$200(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->setSpeedDialContactPosition(I)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    move-result-object p1

    .line 131
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$300(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->STARRED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->FREQUENT_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    .line 136
    :goto_0
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$400(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/android/dialer/callintent/SpeedDialContactType$Type;->PINNED_CONTACT:Lcom/android/dialer/callintent/SpeedDialContactType$Type;

    invoke-virtual {p1, v0}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->addSpeedDialContactType(Lcom/android/dialer/callintent/SpeedDialContactType$Type;)Lcom/android/dialer/callintent/CallSpecificAppData$Builder;

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$500(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-virtual {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v0

    sget-object v1, Lcom/android/dialer/logging/InteractionEvent$Type;->SPEED_DIAL_CLICK_CONTACT_WITH_AMBIGUOUS_NUMBER:Lcom/android/dialer/logging/InteractionEvent$Type;

    .line 145
    invoke-interface {v0, v1}, Lcom/android/dialer/logging/LoggingBindings;->logInteraction(Lcom/android/dialer/logging/InteractionEvent$Type;)V

    .line 146
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$600(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    .line 147
    invoke-virtual {v1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->getLookupUri()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    .line 148
    invoke-static {v2}, Lcom/android/contacts/common/MoreContactUtils;->getTargetRectFromView(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 149
    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    .line 146
    invoke-interface {v0, v1, v2, p1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onContactSelected(Landroid/net/Uri;Landroid/graphics/Rect;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    goto :goto_1

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v0}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$700(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Lcom/android/contacts/common/list/ContactTileView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dialer/app/list/PhoneFavoriteTileView$2;->this$0:Lcom/android/dialer/app/list/PhoneFavoriteTileView;

    invoke-static {v1}, Lcom/android/dialer/app/list/PhoneFavoriteTileView;->access$500(Lcom/android/dialer/app/list/PhoneFavoriteTileView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/dialer/callintent/CallSpecificAppData$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/android/dialer/callintent/CallSpecificAppData;

    invoke-interface {v0, v1, p1}, Lcom/android/contacts/common/list/ContactTileView$Listener;->onCallNumberDirectly(Ljava/lang/String;Lcom/android/dialer/callintent/CallSpecificAppData;)V

    :goto_1
    return-void
.end method
