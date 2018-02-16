<?php 
namespace Drupal\hello_world\Plugin\Block;
use Drupal\Core\Block\BlockBase;

/**
 * Provides a 'Hello' Block.
 *
 * @Block(
 *   id = "hello_block",
 *   admin_label = @Translation("Hello block"),
 *   category = @Translation("Hello World"),
 * )
 */
class MyBlock extends BlockBase {

    /**
   * {@inheritdoc}
   */
  public function build() {
    return array(
      '#type' => 'markup',
      '#markup' => 'This block list the article.',
       '#attached' => array(
           'library' =>  array( 'hello_world/hello_world' ),
       ), 
        
        
    );
  }
}