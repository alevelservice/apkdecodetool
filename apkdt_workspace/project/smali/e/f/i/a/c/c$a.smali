.class Le/f/i/a/c/c$a;
.super Ljava/lang/Object;
.source "AnimatedFrameCache.java"

# interfaces
.implements Le/f/i/c/h$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/a/c/c;-><init>(Le/f/b/a/d;Le/f/i/c/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/i/c/h$e<",
        "Le/f/b/a/d;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/f/i/a/c/c;


# direct methods
.method constructor <init>(Le/f/i/a/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/a/c/c$a;->a:Le/f/i/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/f/b/a/d;Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Le/f/i/a/c/c$a;->a:Le/f/i/a/c/c;

    invoke-virtual {v0, p1, p2}, Le/f/i/a/c/c;->a(Le/f/b/a/d;Z)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p1, Le/f/b/a/d;

    invoke-virtual {p0, p1, p2}, Le/f/i/a/c/c$a;->a(Le/f/b/a/d;Z)V

    return-void
.end method
