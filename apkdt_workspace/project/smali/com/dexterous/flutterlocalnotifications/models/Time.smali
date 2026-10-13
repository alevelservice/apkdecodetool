.class public Lcom/dexterous/flutterlocalnotifications/models/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final SECOND:Ljava/lang/String; = "second"


# instance fields
.field public hour:Ljava/lang/Integer;

.field public minute:Ljava/lang/Integer;

.field public second:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->hour:Ljava/lang/Integer;

    .line 3
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->minute:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/dexterous/flutterlocalnotifications/models/Time;->second:Ljava/lang/Integer;

    return-void
.end method

.method public static from(Ljava/util/Map;)Lcom/dexterous/flutterlocalnotifications/models/Time;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/dexterous/flutterlocalnotifications/models/Time;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/dexterous/flutterlocalnotifications/models/Time;

    invoke-direct {v0}, Lcom/dexterous/flutterlocalnotifications/models/Time;-><init>()V

    const-string v1, "hour"

    .line 2
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->hour:Ljava/lang/Integer;

    const-string v1, "minute"

    .line 3
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->minute:Ljava/lang/Integer;

    const-string v1, "second"

    .line 4
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    iput-object p0, v0, Lcom/dexterous/flutterlocalnotifications/models/Time;->second:Ljava/lang/Integer;

    return-object v0
.end method
