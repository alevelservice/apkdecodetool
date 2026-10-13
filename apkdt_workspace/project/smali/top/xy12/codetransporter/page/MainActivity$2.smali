.class Ltop/xy12/codetransporter/page/MainActivity$2;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltop/xy12/codetransporter/page/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltop/xy12/codetransporter/page/MainActivity;


# direct methods
.method constructor <init>(Ltop/xy12/codetransporter/page/MainActivity;)V
    .locals 0

    .line 332
    iput-object p1, p0, Ltop/xy12/codetransporter/page/MainActivity$2;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 336
    iget-object v0, p0, Ltop/xy12/codetransporter/page/MainActivity$2;->this$0:Ltop/xy12/codetransporter/page/MainActivity;

    invoke-virtual {v0}, Ltop/xy12/codetransporter/page/MainActivity;->sendHeart()V

    return-void
.end method
