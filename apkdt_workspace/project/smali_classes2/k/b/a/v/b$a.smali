.class Lk/b/a/v/b$a;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"

# interfaces
.implements Lk/b/a/x/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/b/a/v/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lk/b/a/x/k<",
        "Lk/b/a/m;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lk/b/a/x/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk/b/a/v/b$a;->a(Lk/b/a/x/e;)Lk/b/a/m;

    move-result-object p1

    return-object p1
.end method

.method public a(Lk/b/a/x/e;)Lk/b/a/m;
    .locals 1

    .line 2
    instance-of v0, p1, Lk/b/a/v/a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lk/b/a/v/a;

    iget-object p1, p1, Lk/b/a/v/a;->k:Lk/b/a/m;

    return-object p1

    .line 4
    :cond_0
    sget-object p1, Lk/b/a/m;->ZERO:Lk/b/a/m;

    return-object p1
.end method
