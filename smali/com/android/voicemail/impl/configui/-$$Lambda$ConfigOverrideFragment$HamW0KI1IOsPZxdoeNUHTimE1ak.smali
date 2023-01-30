.class public final synthetic Lcom/android/voicemail/impl/configui/-$$Lambda$ConfigOverrideFragment$HamW0KI1IOsPZxdoeNUHTimE1ak;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;

.field public final synthetic f$1:Landroid/preference/Preference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;Landroid/preference/Preference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/voicemail/impl/configui/-$$Lambda$ConfigOverrideFragment$HamW0KI1IOsPZxdoeNUHTimE1ak;->f$0:Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;

    iput-object p2, p0, Lcom/android/voicemail/impl/configui/-$$Lambda$ConfigOverrideFragment$HamW0KI1IOsPZxdoeNUHTimE1ak;->f$1:Landroid/preference/Preference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/voicemail/impl/configui/-$$Lambda$ConfigOverrideFragment$HamW0KI1IOsPZxdoeNUHTimE1ak;->f$0:Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;

    iget-object v1, p0, Lcom/android/voicemail/impl/configui/-$$Lambda$ConfigOverrideFragment$HamW0KI1IOsPZxdoeNUHTimE1ak;->f$1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/voicemail/impl/configui/ConfigOverrideFragment;->lambda$onPreferenceChange$0$ConfigOverrideFragment(Landroid/preference/Preference;)V

    return-void
.end method
