.class public abstract Le/i/b/a/i/h$a;
.super Ljava/lang/Object;
.source "EventInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/a/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(J)Le/i/b/a/i/h$a;
.end method

.method public abstract a(Le/i/b/a/i/g;)Le/i/b/a/i/h$a;
.end method

.method public abstract a(Ljava/lang/Integer;)Le/i/b/a/i/h$a;
.end method

.method public abstract a(Ljava/lang/String;)Le/i/b/a/i/h$a;
.end method

.method public final a(Ljava/lang/String;I)Le/i/b/a/i/h$a;
    .locals 1

    .line 3
    invoke-virtual {p0}, Le/i/b/a/i/h$a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Le/i/b/a/i/h$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Le/i/b/a/i/h$a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/i/b/a/i/h$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/a/i/h$a;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract a(Ljava/util/Map;)Le/i/b/a/i/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/i/b/a/i/h$a;"
        }
    .end annotation
.end method

.method public abstract a()Le/i/b/a/i/h;
.end method

.method public abstract b(J)Le/i/b/a/i/h$a;
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
