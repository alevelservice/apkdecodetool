.class public interface abstract Lcom/google/android/gms/measurement/internal/h6;
.super Ljava/lang/Object;


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract beginAdUnitExposure(Ljava/lang/String;)V
.end method

.method public abstract clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract endAdUnitExposure(Ljava/lang/String;)V
.end method

.method public abstract generateEventId()J
.end method

.method public abstract getConditionalUserProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentScreenClass()Ljava/lang/String;
.end method

.method public abstract getCurrentScreenName()Ljava/lang/String;
.end method

.method public abstract getGmpAppId()Ljava/lang/String;
.end method

.method public abstract getMaxUserProperties(Ljava/lang/String;)I
.end method

.method public abstract getUserProperties(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setConditionalUserProperty(Landroid/os/Bundle;)V
.end method
