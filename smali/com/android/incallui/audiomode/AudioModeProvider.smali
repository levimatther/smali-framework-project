.class public Lcom/android/incallui/audiomode/AudioModeProvider;
.super Ljava/lang/Object;
.source "AudioModeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;
    }
.end annotation


# static fields
.field private static final SUPPORTED_AUDIO_ROUTE_ALL:I = 0xf

.field private static final instance:Lcom/android/incallui/audiomode/AudioModeProvider;


# instance fields
.field private audioState:Landroid/telecom/CallAudioState;

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/android/incallui/audiomode/AudioModeProvider;

    invoke-direct {v0}, Lcom/android/incallui/audiomode/AudioModeProvider;-><init>()V

    sput-object v0, Lcom/android/incallui/audiomode/AudioModeProvider;->instance:Lcom/android/incallui/audiomode/AudioModeProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->listeners:Ljava/util/List;

    .line 37
    new-instance v0, Landroid/telecom/CallAudioState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Landroid/telecom/CallAudioState;-><init>(ZII)V

    iput-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->audioState:Landroid/telecom/CallAudioState;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/audiomode/AudioModeProvider;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/incallui/audiomode/AudioModeProvider;->instance:Lcom/android/incallui/audiomode/AudioModeProvider;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->audioState:Landroid/telecom/CallAudioState;

    invoke-interface {p1, v0}, Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    :cond_0
    return-void
.end method

.method public getAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->audioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public onAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->audioState:Landroid/telecom/CallAudioState;

    invoke-virtual {v0, p1}, Landroid/telecom/CallAudioState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    iput-object p1, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->audioState:Landroid/telecom/CallAudioState;

    .line 47
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getInCallScreen()Lcom/android/incallui/incall/protocol/InCallScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/incallui/incall/protocol/InCallScreen;->updateVbByAudioMode(Landroid/telecom/CallAudioState;)V

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;

    .line 52
    invoke-interface {v1, p1}, Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeListener(Lcom/android/incallui/audiomode/AudioModeProvider$AudioModeListener;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/incallui/audiomode/AudioModeProvider;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
