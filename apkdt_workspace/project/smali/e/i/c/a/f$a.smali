.class Le/i/c/a/f$a;
.super Le/i/c/a/f;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/i/c/a/f;->a(Ljava/lang/String;)Le/i/c/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Le/i/c/a/f;Le/i/c/a/f;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p2, p1}, Le/i/c/a/f;-><init>(Le/i/c/a/f;Le/i/c/a/f$a;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le/i/c/a/f;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "already specified useForNull"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
