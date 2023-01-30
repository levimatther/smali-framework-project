.class Lcom/android/incallui/call/DialerCall$VideoTechManager;
.super Ljava/lang/Object;
.source "DialerCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/call/DialerCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoTechManager"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final emptyVideoTech:Lcom/android/incallui/videotech/empty/EmptyVideoTech;

.field private savedTech:Lcom/android/incallui/videotech/VideoTech;

.field private final videoTechs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/videotech/VideoTech;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/incallui/call/DialerCall;)V
    .locals 5

    .line 1973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1969
    new-instance v0, Lcom/android/incallui/videotech/empty/EmptyVideoTech;

    invoke-direct {v0}, Lcom/android/incallui/videotech/empty/EmptyVideoTech;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->emptyVideoTech:Lcom/android/incallui/videotech/empty/EmptyVideoTech;

    .line 1974
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->context:Landroid/content/Context;

    .line 1976
    invoke-virtual {p1}, Lcom/android/incallui/call/DialerCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const-string v2, "[^+0-9]"

    .line 1978
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1981
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    .line 1982
    new-instance v2, Lcom/android/incallui/videotech/ims/ImsVideoTech;

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/logging/Logger;->get(Landroid/content/Context;)Lcom/android/dialer/logging/LoggingBindings;

    move-result-object v3

    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4}, Lcom/android/incallui/videotech/ims/ImsVideoTech;-><init>(Lcom/android/dialer/logging/LoggingBindings;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Landroid/telecom/Call;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1985
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v1

    .line 1986
    invoke-virtual {v1}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getRcsVideoShareFactory()Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;

    move-result-object v1

    .line 1988
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->get(Landroid/content/Context;)Lcom/android/dialer/enrichedcall/EnrichedCallComponent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dialer/enrichedcall/EnrichedCallComponent;->getEnrichedCallManager()Lcom/android/dialer/enrichedcall/EnrichedCallManager;

    move-result-object v2

    .line 1987
    invoke-interface {v1, v2, p1, v0}, Lcom/android/dialer/enrichedcall/RcsVideoShareFactory;->newRcsVideoShare(Lcom/android/dialer/enrichedcall/EnrichedCallManager;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Ljava/lang/String;)Lcom/android/incallui/videotech/VideoTech;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1992
    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1995
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    new-instance v2, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;

    .line 1997
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$1000(Lcom/android/incallui/call/DialerCall;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/dialer/lightbringer/LightbringerComponent;->get(Landroid/content/Context;)Lcom/android/dialer/lightbringer/LightbringerComponent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/dialer/lightbringer/LightbringerComponent;->getLightbringer()Lcom/android/dialer/lightbringer/Lightbringer;

    move-result-object v3

    .line 1999
    invoke-static {p1}, Lcom/android/incallui/call/DialerCall;->access$400(Lcom/android/incallui/call/DialerCall;)Landroid/telecom/Call;

    move-result-object v4

    invoke-direct {v2, v3, p1, v4, v0}, Lcom/android/incallui/videotech/lightbringer/LightbringerTech;-><init>(Lcom/android/dialer/lightbringer/Lightbringer;Lcom/android/incallui/videotech/VideoTech$VideoTechListener;Landroid/telecom/Call;Ljava/lang/String;)V

    .line 1995
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method dispatchCallStateChanged(I)V
    .locals 3

    .line 2020
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/videotech/VideoTech;

    .line 2021
    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2, p1}, Lcom/android/incallui/videotech/VideoTech;->onCallStateChanged(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method dispatchRemovedFromCallList()V
    .locals 2

    .line 2026
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/videotech/VideoTech;

    .line 2027
    invoke-interface {v1}, Lcom/android/incallui/videotech/VideoTech;->onRemovedFromCallList()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getVideoTech()Lcom/android/incallui/videotech/VideoTech;
    .locals 3

    .line 2004
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->savedTech:Lcom/android/incallui/videotech/VideoTech;

    if-eqz v0, :cond_0

    return-object v0

    .line 2008
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->videoTechs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/videotech/VideoTech;

    .line 2009
    iget-object v2, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/android/incallui/videotech/VideoTech;->isAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2011
    iput-object v1, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->savedTech:Lcom/android/incallui/videotech/VideoTech;

    return-object v1

    .line 2016
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/call/DialerCall$VideoTechManager;->emptyVideoTech:Lcom/android/incallui/videotech/empty/EmptyVideoTech;

    return-object v0
.end method
