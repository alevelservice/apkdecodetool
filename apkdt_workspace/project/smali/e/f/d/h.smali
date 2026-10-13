.class public Le/f/d/h;
.super Le/f/d/a;
.source "SimpleDataSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/f/d/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/d/a;-><init>()V

    return-void
.end method

.method public static i()Le/f/d/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Le/f/d/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/f/d/h;

    invoke-direct {v0}, Le/f/d/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/facebook/common/internal/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    invoke-super {p0, p1}, Le/f/d/a;->a(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method
