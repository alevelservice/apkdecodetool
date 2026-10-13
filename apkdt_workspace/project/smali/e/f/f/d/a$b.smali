.class Le/f/f/d/a$b;
.super Le/f/f/d/f;
.source "AbstractDraweeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f/f/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<INFO:",
        "Ljava/lang/Object;",
        ">",
        "Le/f/f/d/f<",
        "TINFO;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/f/f/d/f;-><init>()V

    return-void
.end method

.method public static a(Le/f/f/d/d;Le/f/f/d/d;)Le/f/f/d/a$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<INFO:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/f/d/d<",
            "-TINFO;>;",
            "Le/f/f/d/d<",
            "-TINFO;>;)",
            "Le/f/f/d/a$b<",
            "TINFO;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AbstractDraweeController#createInternal"

    .line 2
    invoke-static {v0}, Le/f/i/j/b;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Le/f/f/d/a$b;

    invoke-direct {v0}, Le/f/f/d/a$b;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Le/f/f/d/f;->a(Le/f/f/d/d;)V

    .line 5
    invoke-virtual {v0, p1}, Le/f/f/d/f;->a(Le/f/f/d/d;)V

    .line 6
    invoke-static {}, Le/f/i/j/b;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 7
    invoke-static {}, Le/f/i/j/b;->a()V

    :cond_1
    return-object v0
.end method
