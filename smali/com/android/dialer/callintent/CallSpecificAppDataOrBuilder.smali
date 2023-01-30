.class public interface abstract Lcom/android/dialer/callintent/CallSpecificAppDataOrBuilder;
.super Ljava/lang/Object;
.source "CallSpecificAppDataOrBuilder.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# virtual methods
.method public abstract getCallInitiationType()Lcom/android/dialer/callintent/CallInitiationType$Type;
.end method

.method public abstract getCharactersInSearchString()I
.end method

.method public abstract getLightbringerButtonAppearInCollapsedCallLogItemCount()I
.end method

.method public abstract getLightbringerButtonAppearInExpandedCallLogItemCount()I
.end method

.method public abstract getLightbringerButtonAppearInSearchCount()I
.end method

.method public abstract getPositionOfSelectedSearchResult()I
.end method

.method public abstract getSpeedDialContactPosition()I
.end method

.method public abstract getSpeedDialContactType(I)Lcom/android/dialer/callintent/SpeedDialContactType$Type;
.end method

.method public abstract getSpeedDialContactTypeCount()I
.end method

.method public abstract getSpeedDialContactTypeList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/callintent/SpeedDialContactType$Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getStartingTabIndex()I
.end method

.method public abstract getTimeSinceAppLaunch()J
.end method

.method public abstract getTimeSinceFirstClick()J
.end method

.method public abstract getUiActionTimestampsSinceAppLaunch(I)J
.end method

.method public abstract getUiActionTimestampsSinceAppLaunchCount()I
.end method

.method public abstract getUiActionTimestampsSinceAppLaunchList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUiActionsSinceAppLaunch(I)Lcom/android/dialer/logging/UiAction$Type;
.end method

.method public abstract getUiActionsSinceAppLaunchCount()I
.end method

.method public abstract getUiActionsSinceAppLaunchList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/dialer/logging/UiAction$Type;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasCallInitiationType()Z
.end method

.method public abstract hasCharactersInSearchString()Z
.end method

.method public abstract hasLightbringerButtonAppearInCollapsedCallLogItemCount()Z
.end method

.method public abstract hasLightbringerButtonAppearInExpandedCallLogItemCount()Z
.end method

.method public abstract hasLightbringerButtonAppearInSearchCount()Z
.end method

.method public abstract hasPositionOfSelectedSearchResult()Z
.end method

.method public abstract hasSpeedDialContactPosition()Z
.end method

.method public abstract hasStartingTabIndex()Z
.end method

.method public abstract hasTimeSinceAppLaunch()Z
.end method

.method public abstract hasTimeSinceFirstClick()Z
.end method
