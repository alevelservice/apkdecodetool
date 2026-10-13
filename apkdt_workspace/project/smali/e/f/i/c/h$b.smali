.class Le/f/i/c/h$b;
.super Ljava/lang/Object;
.source "CountingMemoryCache.java"

# interfaces
.implements Le/f/c/g/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/f/i/c/h;->g(Le/f/i/c/h$d;)Le/f/c/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/c/g/c<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Le/f/i/c/h$d;

.field final synthetic b:Le/f/i/c/h;


# direct methods
.method constructor <init>(Le/f/i/c/h;Le/f/i/c/h$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/f/i/c/h$b;->b:Le/f/i/c/h;

    iput-object p2, p0, Le/f/i/c/h$b;->a:Le/f/i/c/h$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/f/i/c/h$b;->b:Le/f/i/c/h;

    iget-object v0, p0, Le/f/i/c/h$b;->a:Le/f/i/c/h$d;

    invoke-static {p1, v0}, Le/f/i/c/h;->a(Le/f/i/c/h;Le/f/i/c/h$d;)V

    return-void
.end method
