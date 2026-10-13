.class public Le/b/b/a/b/b/e;
.super Ljava/lang/Object;
.source "MonitorWrapper.java"


# static fields
.field private static a:Le/b/b/a/b/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/b/a/b/b/f;

    invoke-direct {v0}, Le/b/b/a/b/b/f;-><init>()V

    sput-object v0, Le/b/b/a/b/b/e;->a:Le/b/b/a/b/b/b;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Le/b/b/a/b/b/e;->a:Le/b/b/a/b/b/b;

    invoke-interface {v0, p0, p1}, Le/b/b/a/b/b/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
