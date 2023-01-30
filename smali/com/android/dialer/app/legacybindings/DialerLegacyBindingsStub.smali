.class public Lcom/android/dialer/app/legacybindings/DialerLegacyBindingsStub;
.super Ljava/lang/Object;
.source "DialerLegacyBindingsStub.java"

# interfaces
.implements Lcom/android/dialer/app/legacybindings/DialerLegacyBindings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newCallLogAdapter(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;I)Lcom/android/dialer/app/calllog/CallLogAdapter;
    .locals 12

    .line 44
    new-instance v11, Lcom/android/dialer/app/calllog/CallLogAdapter;

    move-object v0, v11

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/dialer/app/calllog/CallLogAdapter;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/dialer/app/calllog/CallLogAdapter$CallFetcher;Lcom/android/dialer/app/calllog/CallLogAdapter$MultiSelectRemoveView;Lcom/android/dialer/app/calllog/CallLogAdapter$OnActionModeStateChangedListener;Lcom/android/dialer/app/calllog/calllogcache/CallLogCache;Lcom/android/dialer/app/contactinfo/ContactInfoCache;Lcom/android/dialer/app/voicemail/VoicemailPlaybackPresenter;Lcom/android/dialer/blocking/FilteredNumberAsyncQueryHandler;I)V

    return-object v11
.end method

.method public newRegularSearchFragment()Lcom/android/dialer/app/list/RegularSearchFragment;
    .locals 1

    .line 59
    new-instance v0, Lcom/android/dialer/app/list/RegularSearchFragment;

    invoke-direct {v0}, Lcom/android/dialer/app/list/RegularSearchFragment;-><init>()V

    return-object v0
.end method
